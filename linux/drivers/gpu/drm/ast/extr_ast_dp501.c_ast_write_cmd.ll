; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_dp501.c_ast_write_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_dp501.c_ast_write_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.ast_private* }
%struct.ast_private = type { i32 }

@AST_IO_CRTC_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32)* @ast_write_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ast_write_cmd(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ast_private*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %9 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %8, i32 0, i32 0
  %10 = load %struct.ast_private*, %struct.ast_private** %9, align 8
  store %struct.ast_private* %10, %struct.ast_private** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.ast_private*, %struct.ast_private** %6, align 8
  %12 = call i64 @wait_nack(%struct.ast_private* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %40

14:                                               ; preds = %2
  %15 = load %struct.ast_private*, %struct.ast_private** %6, align 8
  %16 = call i32 @send_nack(%struct.ast_private* %15)
  %17 = load %struct.ast_private*, %struct.ast_private** %6, align 8
  %18 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @ast_set_index_reg_mask(%struct.ast_private* %17, i32 %18, i32 154, i32 0, i32 %19)
  %21 = load %struct.ast_private*, %struct.ast_private** %6, align 8
  %22 = call i32 @send_ack(%struct.ast_private* %21)
  %23 = load %struct.ast_private*, %struct.ast_private** %6, align 8
  %24 = call i32 @set_cmd_trigger(%struct.ast_private* %23)
  br label %25

25:                                               ; preds = %35, %14
  %26 = load %struct.ast_private*, %struct.ast_private** %6, align 8
  %27 = call i64 @wait_ack(%struct.ast_private* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load %struct.ast_private*, %struct.ast_private** %6, align 8
  %31 = call i32 @clear_cmd_trigger(%struct.ast_private* %30)
  %32 = load %struct.ast_private*, %struct.ast_private** %6, align 8
  %33 = call i32 @send_nack(%struct.ast_private* %32)
  store i32 1, i32* %3, align 4
  br label %45

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  %38 = icmp slt i32 %36, 100
  br i1 %38, label %25, label %39

39:                                               ; preds = %35
  br label %40

40:                                               ; preds = %39, %2
  %41 = load %struct.ast_private*, %struct.ast_private** %6, align 8
  %42 = call i32 @clear_cmd_trigger(%struct.ast_private* %41)
  %43 = load %struct.ast_private*, %struct.ast_private** %6, align 8
  %44 = call i32 @send_nack(%struct.ast_private* %43)
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %40, %29
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i64 @wait_nack(%struct.ast_private*) #1

declare dso_local i32 @send_nack(%struct.ast_private*) #1

declare dso_local i32 @ast_set_index_reg_mask(%struct.ast_private*, i32, i32, i32, i32) #1

declare dso_local i32 @send_ack(%struct.ast_private*) #1

declare dso_local i32 @set_cmd_trigger(%struct.ast_private*) #1

declare dso_local i64 @wait_ack(%struct.ast_private*) #1

declare dso_local i32 @clear_cmd_trigger(%struct.ast_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
