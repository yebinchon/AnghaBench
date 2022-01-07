; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_channel_mgmt.c_init_vp_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_channel_mgmt.c_init_vp_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.cpumask* }
%struct.cpumask = type { i32 }
%struct.vmbus_channel = type { i32, i32, i64, i8*, %struct.cpumask, %struct.vmbus_channel* }

@vmbus_devs = common dso_local global %struct.TYPE_3__* null, align 8
@vmbus_proto_version = common dso_local global i64 0, align 8
@VERSION_WS2008 = common dso_local global i64 0, align 8
@VERSION_WIN7 = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@bind_channel_to_cpu_lock = common dso_local global i32 0, align 4
@HV_BALANCED = common dso_local global i64 0, align 8
@next_numa_node_id = common dso_local global i32 0, align 4
@nr_node_ids = common dso_local global i32 0, align 4
@hv_context = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@HV_LOCALIZED = common dso_local global i64 0, align 8
@nr_cpu_ids = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmbus_channel*, i64)* @init_vp_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_vp_index(%struct.vmbus_channel* %0, i64 %1) #0 {
  %3 = alloca %struct.vmbus_channel*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.vmbus_channel*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cpumask*, align 8
  store %struct.vmbus_channel* %0, %struct.vmbus_channel** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @vmbus_devs, align 8
  %12 = load i64, i64* %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %17 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %16, i32 0, i32 5
  %18 = load %struct.vmbus_channel*, %struct.vmbus_channel** %17, align 8
  store %struct.vmbus_channel* %18, %struct.vmbus_channel** %7, align 8
  %19 = load i64, i64* @vmbus_proto_version, align 8
  %20 = load i64, i64* @VERSION_WS2008, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %33, label %22

22:                                               ; preds = %2
  %23 = load i64, i64* @vmbus_proto_version, align 8
  %24 = load i64, i64* @VERSION_WIN7, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %33, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i32 @alloc_cpumask_var(i32* %9, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %29, %26, %22, %2
  %34 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %35 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  %36 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %37 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %36, i32 0, i32 1
  store i32 0, i32* %37, align 4
  %38 = call i8* @hv_cpu_number_to_vp_number(i32 0)
  %39 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %40 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %39, i32 0, i32 3
  store i8* %38, i8** %40, align 8
  br label %168

41:                                               ; preds = %29
  %42 = call i32 @spin_lock(i32* @bind_channel_to_cpu_lock)
  %43 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %44 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @HV_BALANCED, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %51, label %48

48:                                               ; preds = %41
  %49 = load %struct.vmbus_channel*, %struct.vmbus_channel** %7, align 8
  %50 = icmp ne %struct.vmbus_channel* %49, null
  br i1 %50, label %71, label %51

51:                                               ; preds = %48, %41
  br label %52

52:                                               ; preds = %51, %58, %64
  %53 = load i32, i32* @next_numa_node_id, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* @next_numa_node_id, align 4
  store i32 %53, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @nr_node_ids, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store i32 0, i32* @next_numa_node_id, align 4
  store i32 0, i32* %8, align 4
  br label %52

59:                                               ; preds = %52
  %60 = load i32, i32* %8, align 4
  %61 = call %struct.cpumask* @cpumask_of_node(i32 %60)
  %62 = call i64 @cpumask_empty(%struct.cpumask* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %52

65:                                               ; preds = %59
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %69 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  store %struct.vmbus_channel* %70, %struct.vmbus_channel** %7, align 8
  br label %71

71:                                               ; preds = %66, %48
  %72 = load %struct.cpumask*, %struct.cpumask** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hv_context, i32 0, i32 0), align 8
  %73 = load %struct.vmbus_channel*, %struct.vmbus_channel** %7, align 8
  %74 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.cpumask, %struct.cpumask* %72, i64 %76
  store %struct.cpumask* %77, %struct.cpumask** %10, align 8
  %78 = load %struct.cpumask*, %struct.cpumask** %10, align 8
  %79 = call i64 @cpumask_weight(%struct.cpumask* %78)
  %80 = load %struct.vmbus_channel*, %struct.vmbus_channel** %7, align 8
  %81 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call %struct.cpumask* @cpumask_of_node(i32 %82)
  %84 = call i64 @cpumask_weight(%struct.cpumask* %83)
  %85 = icmp eq i64 %79, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %71
  %87 = load %struct.cpumask*, %struct.cpumask** %10, align 8
  %88 = call i32 @cpumask_clear(%struct.cpumask* %87)
  br label %89

89:                                               ; preds = %86, %71
  %90 = load i32, i32* %9, align 4
  %91 = load %struct.cpumask*, %struct.cpumask** %10, align 8
  %92 = load %struct.vmbus_channel*, %struct.vmbus_channel** %7, align 8
  %93 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call %struct.cpumask* @cpumask_of_node(i32 %94)
  %96 = call i32 @cpumask_xor(i32 %90, %struct.cpumask* %91, %struct.cpumask* %95)
  store i32 -1, i32* %5, align 4
  %97 = load %struct.vmbus_channel*, %struct.vmbus_channel** %7, align 8
  %98 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @HV_LOCALIZED, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %116

102:                                              ; preds = %89
  %103 = load %struct.vmbus_channel*, %struct.vmbus_channel** %7, align 8
  %104 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %103, i32 0, i32 4
  %105 = load %struct.vmbus_channel*, %struct.vmbus_channel** %7, align 8
  %106 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call %struct.cpumask* @cpumask_of_node(i32 %107)
  %109 = call i64 @cpumask_equal(%struct.cpumask* %104, %struct.cpumask* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %102
  %112 = load %struct.vmbus_channel*, %struct.vmbus_channel** %7, align 8
  %113 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %112, i32 0, i32 4
  %114 = call i32 @cpumask_clear(%struct.cpumask* %113)
  br label %115

115:                                              ; preds = %111, %102
  br label %116

116:                                              ; preds = %115, %89
  br label %117

117:                                              ; preds = %116, %124, %156
  %118 = load i32, i32* %5, align 4
  %119 = load i32, i32* %9, align 4
  %120 = call i32 @cpumask_next(i32 %118, i32 %119)
  store i32 %120, i32* %5, align 4
  %121 = load i32, i32* %5, align 4
  %122 = load i32, i32* @nr_cpu_ids, align 4
  %123 = icmp sge i32 %121, %122
  br i1 %123, label %124, label %131

124:                                              ; preds = %117
  store i32 -1, i32* %5, align 4
  %125 = load i32, i32* %9, align 4
  %126 = load %struct.vmbus_channel*, %struct.vmbus_channel** %7, align 8
  %127 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call %struct.cpumask* @cpumask_of_node(i32 %128)
  %130 = call i32 @cpumask_copy(i32 %125, %struct.cpumask* %129)
  br label %117

131:                                              ; preds = %117
  %132 = load %struct.vmbus_channel*, %struct.vmbus_channel** %7, align 8
  %133 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @HV_LOCALIZED, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %152

137:                                              ; preds = %131
  %138 = load i32, i32* %5, align 4
  %139 = load %struct.vmbus_channel*, %struct.vmbus_channel** %7, align 8
  %140 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %139, i32 0, i32 4
  %141 = call i32 @cpumask_test_cpu(i32 %138, %struct.cpumask* %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %151, label %143

143:                                              ; preds = %137
  %144 = load i32, i32* %5, align 4
  %145 = load %struct.vmbus_channel*, %struct.vmbus_channel** %7, align 8
  %146 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %145, i32 0, i32 4
  %147 = call i32 @cpumask_set_cpu(i32 %144, %struct.cpumask* %146)
  %148 = load i32, i32* %5, align 4
  %149 = load %struct.cpumask*, %struct.cpumask** %10, align 8
  %150 = call i32 @cpumask_set_cpu(i32 %148, %struct.cpumask* %149)
  br label %157

151:                                              ; preds = %137
  br label %156

152:                                              ; preds = %131
  %153 = load i32, i32* %5, align 4
  %154 = load %struct.cpumask*, %struct.cpumask** %10, align 8
  %155 = call i32 @cpumask_set_cpu(i32 %153, %struct.cpumask* %154)
  br label %157

156:                                              ; preds = %151
  br label %117

157:                                              ; preds = %152, %143
  %158 = load i32, i32* %5, align 4
  %159 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %160 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %159, i32 0, i32 1
  store i32 %158, i32* %160, align 4
  %161 = load i32, i32* %5, align 4
  %162 = call i8* @hv_cpu_number_to_vp_number(i32 %161)
  %163 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %164 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %163, i32 0, i32 3
  store i8* %162, i8** %164, align 8
  %165 = call i32 @spin_unlock(i32* @bind_channel_to_cpu_lock)
  %166 = load i32, i32* %9, align 4
  %167 = call i32 @free_cpumask_var(i32 %166)
  br label %168

168:                                              ; preds = %157, %33
  ret void
}

declare dso_local i32 @alloc_cpumask_var(i32*, i32) #1

declare dso_local i8* @hv_cpu_number_to_vp_number(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @cpumask_empty(%struct.cpumask*) #1

declare dso_local %struct.cpumask* @cpumask_of_node(i32) #1

declare dso_local i64 @cpumask_weight(%struct.cpumask*) #1

declare dso_local i32 @cpumask_clear(%struct.cpumask*) #1

declare dso_local i32 @cpumask_xor(i32, %struct.cpumask*, %struct.cpumask*) #1

declare dso_local i64 @cpumask_equal(%struct.cpumask*, %struct.cpumask*) #1

declare dso_local i32 @cpumask_next(i32, i32) #1

declare dso_local i32 @cpumask_copy(i32, %struct.cpumask*) #1

declare dso_local i32 @cpumask_test_cpu(i32, %struct.cpumask*) #1

declare dso_local i32 @cpumask_set_cpu(i32, %struct.cpumask*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @free_cpumask_var(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
