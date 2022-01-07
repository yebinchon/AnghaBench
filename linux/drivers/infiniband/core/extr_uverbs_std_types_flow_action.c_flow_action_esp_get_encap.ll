; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_std_types_flow_action.c_flow_action_esp_get_encap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_std_types_flow_action.c_flow_action_esp_get_encap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_flow_spec_list = type { i32 }
%struct.uverbs_attr_bundle = type { i32 }
%struct.ib_uverbs_flow_action_esp_encap = type { i64, i32, i32, i64 }

@UVERBS_ATTR_FLOW_ACTION_ESP_ENCAP = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@IB_FLOW_SPEC_IPV4 = common dso_local global i64 0, align 8
@IB_FLOW_SPEC_IPV6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_flow_spec_list*, %struct.uverbs_attr_bundle*)* @flow_action_esp_get_encap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flow_action_esp_get_encap(%struct.ib_flow_spec_list* %0, %struct.uverbs_attr_bundle* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_flow_spec_list*, align 8
  %5 = alloca %struct.uverbs_attr_bundle*, align 8
  %6 = alloca %struct.ib_uverbs_flow_action_esp_encap, align 8
  %7 = alloca i32, align 4
  store %struct.ib_flow_spec_list* %0, %struct.ib_flow_spec_list** %4, align 8
  store %struct.uverbs_attr_bundle* %1, %struct.uverbs_attr_bundle** %5, align 8
  %8 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %5, align 8
  %9 = load i32, i32* @UVERBS_ATTR_FLOW_ACTION_ESP_ENCAP, align 4
  %10 = call i32 @uverbs_copy_from(%struct.ib_uverbs_flow_action_esp_encap* %6, %struct.uverbs_attr_bundle* %8, i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %3, align 4
  br label %46

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.ib_uverbs_flow_action_esp_encap, %struct.ib_uverbs_flow_action_esp_encap* %6, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %46

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.ib_uverbs_flow_action_esp_encap, %struct.ib_uverbs_flow_action_esp_encap* %6, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @IB_FLOW_SPEC_IPV4, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.ib_uverbs_flow_action_esp_encap, %struct.ib_uverbs_flow_action_esp_encap* %6, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @IB_FLOW_SPEC_IPV6, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @EOPNOTSUPP, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %46

35:                                               ; preds = %27, %22
  %36 = getelementptr inbounds %struct.ib_uverbs_flow_action_esp_encap, %struct.ib_uverbs_flow_action_esp_encap* %6, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.ib_uverbs_flow_action_esp_encap, %struct.ib_uverbs_flow_action_esp_encap* %6, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @u64_to_user_ptr(i32 %39)
  %41 = getelementptr inbounds %struct.ib_uverbs_flow_action_esp_encap, %struct.ib_uverbs_flow_action_esp_encap* %6, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.ib_flow_spec_list*, %struct.ib_flow_spec_list** %4, align 8
  %44 = getelementptr inbounds %struct.ib_flow_spec_list, %struct.ib_flow_spec_list* %43, i32 0, i32 0
  %45 = call i32 @parse_esp_ip(i64 %37, i32 %40, i32 %42, i32* %44)
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %35, %32, %19, %13
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @uverbs_copy_from(%struct.ib_uverbs_flow_action_esp_encap*, %struct.uverbs_attr_bundle*, i32) #1

declare dso_local i32 @parse_esp_ip(i64, i32, i32, i32*) #1

declare dso_local i32 @u64_to_user_ptr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
