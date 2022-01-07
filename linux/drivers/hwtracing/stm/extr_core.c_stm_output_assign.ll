; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/stm/extr_core.c_stm_output_assign.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/stm/extr_core.c_stm_output_assign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm_device = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (i8*, %struct.stm_output*)* }
%struct.TYPE_3__ = type { i32 }
%struct.stp_policy_node = type { i32 }
%struct.stm_output = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"assigned %u:%u (+%u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm_device*, i32, %struct.stp_policy_node*, %struct.stm_output*)* @stm_output_assign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm_output_assign(%struct.stm_device* %0, i32 %1, %struct.stp_policy_node* %2, %struct.stm_output* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.stm_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.stp_policy_node*, align 8
  %9 = alloca %struct.stm_output*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.stm_device* %0, %struct.stm_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.stp_policy_node* %2, %struct.stp_policy_node** %8, align 8
  store %struct.stm_output* %3, %struct.stm_output** %9, align 8
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %14, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.stm_device*, %struct.stm_device** %6, align 8
  %20 = getelementptr inbounds %struct.stm_device, %struct.stm_device* %19, i32 0, i32 3
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ugt i32 %18, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %125

28:                                               ; preds = %4
  %29 = load %struct.stp_policy_node*, %struct.stp_policy_node** %8, align 8
  %30 = icmp ne %struct.stp_policy_node* %29, null
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i64 @WARN_ON_ONCE(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %125

38:                                               ; preds = %28
  %39 = load %struct.stp_policy_node*, %struct.stp_policy_node** %8, align 8
  %40 = call i32 @stp_policy_node_get_ranges(%struct.stp_policy_node* %39, i32* %10, i32* %12, i32* %11, i32* %13)
  %41 = load %struct.stm_device*, %struct.stm_device** %6, align 8
  %42 = getelementptr inbounds %struct.stm_device, %struct.stm_device* %41, i32 0, i32 0
  %43 = call i32 @spin_lock(i32* %42)
  %44 = load %struct.stm_output*, %struct.stm_output** %9, align 8
  %45 = getelementptr inbounds %struct.stm_output, %struct.stm_output* %44, i32 0, i32 3
  %46 = call i32 @spin_lock(i32* %45)
  %47 = load %struct.stm_output*, %struct.stm_output** %9, align 8
  %48 = getelementptr inbounds %struct.stm_output, %struct.stm_output* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @WARN_ON_ONCE(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %38
  br label %111

53:                                               ; preds = %38
  %54 = load %struct.stm_device*, %struct.stm_device** %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %13, align 4
  %58 = call i32 @stm_find_master_chan(%struct.stm_device* %54, i32 %55, i32* %10, i32 %56, i32* %11, i32 %57)
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %14, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  br label %111

62:                                               ; preds = %53
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.stm_output*, %struct.stm_output** %9, align 8
  %65 = getelementptr inbounds %struct.stm_output, %struct.stm_output* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load %struct.stm_output*, %struct.stm_output** %9, align 8
  %68 = getelementptr inbounds %struct.stm_output, %struct.stm_output* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.stm_output*, %struct.stm_output** %9, align 8
  %71 = getelementptr inbounds %struct.stm_output, %struct.stm_output* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  %72 = load %struct.stm_device*, %struct.stm_device** %6, align 8
  %73 = getelementptr inbounds %struct.stm_device, %struct.stm_device* %72, i32 0, i32 2
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32 (i8*, %struct.stm_output*)*, i32 (i8*, %struct.stm_output*)** %75, align 8
  %77 = icmp ne i32 (i8*, %struct.stm_output*)* %76, null
  br i1 %77, label %78, label %101

78:                                               ; preds = %62
  %79 = load %struct.stp_policy_node*, %struct.stp_policy_node** %8, align 8
  %80 = call i8* @stp_policy_node_priv(%struct.stp_policy_node* %79)
  store i8* %80, i8** %15, align 8
  %81 = load i8*, i8** %15, align 8
  %82 = icmp ne i8* %81, null
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  %85 = call i64 @WARN_ON_ONCE(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %78
  br label %111

88:                                               ; preds = %78
  %89 = load %struct.stm_device*, %struct.stm_device** %6, align 8
  %90 = getelementptr inbounds %struct.stm_device, %struct.stm_device* %89, i32 0, i32 2
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32 (i8*, %struct.stm_output*)*, i32 (i8*, %struct.stm_output*)** %92, align 8
  %94 = load i8*, i8** %15, align 8
  %95 = load %struct.stm_output*, %struct.stm_output** %9, align 8
  %96 = call i32 %93(i8* %94, %struct.stm_output* %95)
  store i32 %96, i32* %14, align 4
  %97 = load i32, i32* %14, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %88
  br label %111

100:                                              ; preds = %88
  br label %101

101:                                              ; preds = %100, %62
  %102 = load %struct.stm_device*, %struct.stm_device** %6, align 8
  %103 = load %struct.stm_output*, %struct.stm_output** %9, align 8
  %104 = call i32 @stm_output_claim(%struct.stm_device* %102, %struct.stm_output* %103)
  %105 = load %struct.stm_device*, %struct.stm_device** %6, align 8
  %106 = getelementptr inbounds %struct.stm_device, %struct.stm_device* %105, i32 0, i32 1
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @dev_dbg(i32* %106, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %107, i32 %108, i32 %109)
  store i32 0, i32* %14, align 4
  br label %111

111:                                              ; preds = %101, %99, %87, %61, %52
  %112 = load i32, i32* %14, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load %struct.stm_output*, %struct.stm_output** %9, align 8
  %116 = getelementptr inbounds %struct.stm_output, %struct.stm_output* %115, i32 0, i32 0
  store i32 0, i32* %116, align 4
  br label %117

117:                                              ; preds = %114, %111
  %118 = load %struct.stm_output*, %struct.stm_output** %9, align 8
  %119 = getelementptr inbounds %struct.stm_output, %struct.stm_output* %118, i32 0, i32 3
  %120 = call i32 @spin_unlock(i32* %119)
  %121 = load %struct.stm_device*, %struct.stm_device** %6, align 8
  %122 = getelementptr inbounds %struct.stm_device, %struct.stm_device* %121, i32 0, i32 0
  %123 = call i32 @spin_unlock(i32* %122)
  %124 = load i32, i32* %14, align 4
  store i32 %124, i32* %5, align 4
  br label %125

125:                                              ; preds = %117, %35, %25
  %126 = load i32, i32* %5, align 4
  ret i32 %126
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @stp_policy_node_get_ranges(%struct.stp_policy_node*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @stm_find_master_chan(%struct.stm_device*, i32, i32*, i32, i32*, i32) #1

declare dso_local i8* @stp_policy_node_priv(%struct.stp_policy_node*) #1

declare dso_local i32 @stm_output_claim(%struct.stm_device*, %struct.stm_output*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
