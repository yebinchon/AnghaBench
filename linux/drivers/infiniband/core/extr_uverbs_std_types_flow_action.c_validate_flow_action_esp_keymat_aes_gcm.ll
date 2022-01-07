; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_std_types_flow_action.c_validate_flow_action_esp_keymat_aes_gcm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_std_types_flow_action.c_validate_flow_action_esp_keymat_aes_gcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_flow_action_attrs_esp_keymats = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ib_uverbs_flow_action_esp_keymat_aes_gcm }
%struct.ib_uverbs_flow_action_esp_keymat_aes_gcm = type { i64, i32, i32 }

@IB_UVERBS_FLOW_ACTION_IV_ALGO_SEQ = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_flow_action_attrs_esp_keymats*)* @validate_flow_action_esp_keymat_aes_gcm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_flow_action_esp_keymat_aes_gcm(%struct.ib_flow_action_attrs_esp_keymats* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ib_flow_action_attrs_esp_keymats*, align 8
  %4 = alloca %struct.ib_uverbs_flow_action_esp_keymat_aes_gcm*, align 8
  store %struct.ib_flow_action_attrs_esp_keymats* %0, %struct.ib_flow_action_attrs_esp_keymats** %3, align 8
  %5 = load %struct.ib_flow_action_attrs_esp_keymats*, %struct.ib_flow_action_attrs_esp_keymats** %3, align 8
  %6 = getelementptr inbounds %struct.ib_flow_action_attrs_esp_keymats, %struct.ib_flow_action_attrs_esp_keymats* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store %struct.ib_uverbs_flow_action_esp_keymat_aes_gcm* %7, %struct.ib_uverbs_flow_action_esp_keymat_aes_gcm** %4, align 8
  %8 = load %struct.ib_uverbs_flow_action_esp_keymat_aes_gcm*, %struct.ib_uverbs_flow_action_esp_keymat_aes_gcm** %4, align 8
  %9 = getelementptr inbounds %struct.ib_uverbs_flow_action_esp_keymat_aes_gcm, %struct.ib_uverbs_flow_action_esp_keymat_aes_gcm* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @IB_UVERBS_FLOW_ACTION_IV_ALGO_SEQ, align 8
  %12 = icmp sgt i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EOPNOTSUPP, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %53

16:                                               ; preds = %1
  %17 = load %struct.ib_uverbs_flow_action_esp_keymat_aes_gcm*, %struct.ib_uverbs_flow_action_esp_keymat_aes_gcm** %4, align 8
  %18 = getelementptr inbounds %struct.ib_uverbs_flow_action_esp_keymat_aes_gcm, %struct.ib_uverbs_flow_action_esp_keymat_aes_gcm* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 32
  br i1 %20, label %21, label %34

21:                                               ; preds = %16
  %22 = load %struct.ib_uverbs_flow_action_esp_keymat_aes_gcm*, %struct.ib_uverbs_flow_action_esp_keymat_aes_gcm** %4, align 8
  %23 = getelementptr inbounds %struct.ib_uverbs_flow_action_esp_keymat_aes_gcm, %struct.ib_uverbs_flow_action_esp_keymat_aes_gcm* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 24
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load %struct.ib_uverbs_flow_action_esp_keymat_aes_gcm*, %struct.ib_uverbs_flow_action_esp_keymat_aes_gcm** %4, align 8
  %28 = getelementptr inbounds %struct.ib_uverbs_flow_action_esp_keymat_aes_gcm, %struct.ib_uverbs_flow_action_esp_keymat_aes_gcm* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 16
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %53

34:                                               ; preds = %26, %21, %16
  %35 = load %struct.ib_uverbs_flow_action_esp_keymat_aes_gcm*, %struct.ib_uverbs_flow_action_esp_keymat_aes_gcm** %4, align 8
  %36 = getelementptr inbounds %struct.ib_uverbs_flow_action_esp_keymat_aes_gcm, %struct.ib_uverbs_flow_action_esp_keymat_aes_gcm* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 16
  br i1 %38, label %39, label %52

39:                                               ; preds = %34
  %40 = load %struct.ib_uverbs_flow_action_esp_keymat_aes_gcm*, %struct.ib_uverbs_flow_action_esp_keymat_aes_gcm** %4, align 8
  %41 = getelementptr inbounds %struct.ib_uverbs_flow_action_esp_keymat_aes_gcm, %struct.ib_uverbs_flow_action_esp_keymat_aes_gcm* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 8
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load %struct.ib_uverbs_flow_action_esp_keymat_aes_gcm*, %struct.ib_uverbs_flow_action_esp_keymat_aes_gcm** %4, align 8
  %46 = getelementptr inbounds %struct.ib_uverbs_flow_action_esp_keymat_aes_gcm, %struct.ib_uverbs_flow_action_esp_keymat_aes_gcm* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 12
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %53

52:                                               ; preds = %44, %39, %34
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %52, %49, %31, %13
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
