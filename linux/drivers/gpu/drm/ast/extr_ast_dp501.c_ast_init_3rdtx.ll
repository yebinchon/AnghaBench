; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_dp501.c_ast_init_3rdtx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_dp501.c_ast_init_3rdtx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.ast_private* }
%struct.ast_private = type { i64, i32 }

@AST2300 = common dso_local global i64 0, align 8
@AST2400 = common dso_local global i64 0, align 8
@AST_IO_CRTC_PORT = common dso_local global i32 0, align 4
@AST_TX_SIL164 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ast_init_3rdtx(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.ast_private*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %5 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %6 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %5, i32 0, i32 0
  %7 = load %struct.ast_private*, %struct.ast_private** %6, align 8
  store %struct.ast_private* %7, %struct.ast_private** %3, align 8
  %8 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %9 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @AST2300, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %15 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @AST2400, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %48

19:                                               ; preds = %13, %1
  %20 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %21 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %22 = call i32 @ast_get_index_reg_mask(%struct.ast_private* %20, i32 %21, i32 209, i32 255)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %23, 14
  switch i32 %24, label %34 [
    i32 4, label %25
    i32 8, label %28
    i32 12, label %31
  ]

25:                                               ; preds = %19
  %26 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %27 = call i32 @ast_init_dvo(%struct.drm_device* %26)
  br label %47

28:                                               ; preds = %19
  %29 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %30 = call i32 @ast_launch_m68k(%struct.drm_device* %29)
  br label %47

31:                                               ; preds = %19
  %32 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %33 = call i32 @ast_init_dvo(%struct.drm_device* %32)
  br label %47

34:                                               ; preds = %19
  %35 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %36 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @AST_TX_SIL164, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %42 = call i32 @ast_init_dvo(%struct.drm_device* %41)
  br label %46

43:                                               ; preds = %34
  %44 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %45 = call i32 @ast_init_analog(%struct.drm_device* %44)
  br label %46

46:                                               ; preds = %43, %40
  br label %47

47:                                               ; preds = %46, %31, %28, %25
  br label %48

48:                                               ; preds = %47, %13
  ret void
}

declare dso_local i32 @ast_get_index_reg_mask(%struct.ast_private*, i32, i32, i32) #1

declare dso_local i32 @ast_init_dvo(%struct.drm_device*) #1

declare dso_local i32 @ast_launch_m68k(%struct.drm_device*) #1

declare dso_local i32 @ast_init_analog(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
