; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_devx.c_get_dec_obj_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_devx.c_get_dec_obj_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devx_obj = type { i32 }

@MLX5_OBJ_TYPE_RQ = common dso_local global i32 0, align 4
@MLX5_OBJ_TYPE_QP = common dso_local global i32 0, align 4
@MLX5_OBJ_TYPE_SQ = common dso_local global i32 0, align 4
@MLX5_OBJ_TYPE_DCT = common dso_local global i32 0, align 4
@MLX5_OBJ_TYPE_TIR = common dso_local global i32 0, align 4
@MLX5_OBJ_TYPE_TIS = common dso_local global i32 0, align 4
@MLX5_OBJ_TYPE_PSV = common dso_local global i32 0, align 4
@MLX5_OBJ_TYPE_RMP = common dso_local global i32 0, align 4
@MLX5_OBJ_TYPE_XRC_SRQ = common dso_local global i32 0, align 4
@MLX5_OBJ_TYPE_XRQ = common dso_local global i32 0, align 4
@MLX5_OBJ_TYPE_RQT = common dso_local global i32 0, align 4
@MLX5_OBJ_TYPE_FLOW_COUNTER = common dso_local global i32 0, align 4
@MLX5_OBJ_TYPE_CQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devx_obj*, i32)* @get_dec_obj_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_dec_obj_type(%struct.devx_obj* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.devx_obj*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.devx_obj* %0, %struct.devx_obj** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.devx_obj*, %struct.devx_obj** %4, align 8
  %8 = getelementptr inbounds %struct.devx_obj, %struct.devx_obj* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = ashr i32 %9, 32
  %11 = and i32 %10, 65535
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @is_legacy_obj_event_num(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @get_legacy_obj_type(i32 %16)
  store i32 %17, i32* %3, align 4
  br label %53

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %52 [
    i32 139, label %20
    i32 135, label %25
    i32 137, label %27
    i32 133, label %29
    i32 140, label %31
    i32 132, label %33
    i32 131, label %35
    i32 138, label %37
    i32 128, label %39
    i32 136, label %40
    i32 130, label %42
    i32 129, label %44
    i32 134, label %46
    i32 142, label %48
    i32 141, label %50
  ]

20:                                               ; preds = %18
  %21 = load %struct.devx_obj*, %struct.devx_obj** %4, align 8
  %22 = getelementptr inbounds %struct.devx_obj, %struct.devx_obj* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = ashr i32 %23, 48
  store i32 %24, i32* %3, align 4
  br label %53

25:                                               ; preds = %18
  %26 = load i32, i32* @MLX5_OBJ_TYPE_RQ, align 4
  store i32 %26, i32* %3, align 4
  br label %53

27:                                               ; preds = %18
  %28 = load i32, i32* @MLX5_OBJ_TYPE_QP, align 4
  store i32 %28, i32* %3, align 4
  br label %53

29:                                               ; preds = %18
  %30 = load i32, i32* @MLX5_OBJ_TYPE_SQ, align 4
  store i32 %30, i32* %3, align 4
  br label %53

31:                                               ; preds = %18
  %32 = load i32, i32* @MLX5_OBJ_TYPE_DCT, align 4
  store i32 %32, i32* %3, align 4
  br label %53

33:                                               ; preds = %18
  %34 = load i32, i32* @MLX5_OBJ_TYPE_TIR, align 4
  store i32 %34, i32* %3, align 4
  br label %53

35:                                               ; preds = %18
  %36 = load i32, i32* @MLX5_OBJ_TYPE_TIS, align 4
  store i32 %36, i32* %3, align 4
  br label %53

37:                                               ; preds = %18
  %38 = load i32, i32* @MLX5_OBJ_TYPE_PSV, align 4
  store i32 %38, i32* %3, align 4
  br label %53

39:                                               ; preds = %18
  store i32 128, i32* %3, align 4
  br label %53

40:                                               ; preds = %18
  %41 = load i32, i32* @MLX5_OBJ_TYPE_RMP, align 4
  store i32 %41, i32* %3, align 4
  br label %53

42:                                               ; preds = %18
  %43 = load i32, i32* @MLX5_OBJ_TYPE_XRC_SRQ, align 4
  store i32 %43, i32* %3, align 4
  br label %53

44:                                               ; preds = %18
  %45 = load i32, i32* @MLX5_OBJ_TYPE_XRQ, align 4
  store i32 %45, i32* %3, align 4
  br label %53

46:                                               ; preds = %18
  %47 = load i32, i32* @MLX5_OBJ_TYPE_RQT, align 4
  store i32 %47, i32* %3, align 4
  br label %53

48:                                               ; preds = %18
  %49 = load i32, i32* @MLX5_OBJ_TYPE_FLOW_COUNTER, align 4
  store i32 %49, i32* %3, align 4
  br label %53

50:                                               ; preds = %18
  %51 = load i32, i32* @MLX5_OBJ_TYPE_CQ, align 4
  store i32 %51, i32* %3, align 4
  br label %53

52:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %50, %48, %46, %44, %42, %40, %39, %37, %35, %33, %31, %29, %27, %25, %20, %15
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i64 @is_legacy_obj_event_num(i32) #1

declare dso_local i32 @get_legacy_obj_type(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
