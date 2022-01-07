; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/stm/extr_core.c_stm_assign_first_policy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/stm/extr_core.c_stm_assign_first_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm_device = type { i32 }
%struct.stm_output = type { i32 }
%struct.stp_policy_node = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm_device*, %struct.stm_output*, i8**, i32)* @stm_assign_first_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm_assign_first_policy(%struct.stm_device* %0, %struct.stm_output* %1, i8** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.stm_device*, align 8
  %7 = alloca %struct.stm_output*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.stp_policy_node*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.stm_device* %0, %struct.stm_device** %6, align 8
  store %struct.stm_output* %1, %struct.stm_output** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %12, align 4
  store %struct.stp_policy_node* null, %struct.stp_policy_node** %10, align 8
  br label %13

13:                                               ; preds = %34, %4
  %14 = load i8**, i8*** %8, align 8
  %15 = load i32, i32* %12, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8*, i8** %14, i64 %16
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = load %struct.stp_policy_node*, %struct.stp_policy_node** %10, align 8
  %22 = icmp ne %struct.stp_policy_node* %21, null
  %23 = xor i1 %22, true
  br label %24

24:                                               ; preds = %20, %13
  %25 = phi i1 [ false, %13 ], [ %23, %20 ]
  br i1 %25, label %26, label %37

26:                                               ; preds = %24
  %27 = load %struct.stm_device*, %struct.stm_device** %6, align 8
  %28 = load i8**, i8*** %8, align 8
  %29 = load i32, i32* %12, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %28, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = call %struct.stp_policy_node* @stp_policy_node_lookup(%struct.stm_device* %27, i8* %32)
  store %struct.stp_policy_node* %33, %struct.stp_policy_node** %10, align 8
  br label %34

34:                                               ; preds = %26
  %35 = load i32, i32* %12, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %12, align 4
  br label %13

37:                                               ; preds = %24
  %38 = load %struct.stp_policy_node*, %struct.stp_policy_node** %10, align 8
  %39 = icmp ne %struct.stp_policy_node* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %52

43:                                               ; preds = %37
  %44 = load %struct.stm_device*, %struct.stm_device** %6, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.stp_policy_node*, %struct.stp_policy_node** %10, align 8
  %47 = load %struct.stm_output*, %struct.stm_output** %7, align 8
  %48 = call i32 @stm_output_assign(%struct.stm_device* %44, i32 %45, %struct.stp_policy_node* %46, %struct.stm_output* %47)
  store i32 %48, i32* %11, align 4
  %49 = load %struct.stp_policy_node*, %struct.stp_policy_node** %10, align 8
  %50 = call i32 @stp_policy_node_put(%struct.stp_policy_node* %49)
  %51 = load i32, i32* %11, align 4
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %43, %40
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local %struct.stp_policy_node* @stp_policy_node_lookup(%struct.stm_device*, i8*) #1

declare dso_local i32 @stm_output_assign(%struct.stm_device*, i32, %struct.stp_policy_node*, %struct.stm_output*) #1

declare dso_local i32 @stp_policy_node_put(%struct.stp_policy_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
