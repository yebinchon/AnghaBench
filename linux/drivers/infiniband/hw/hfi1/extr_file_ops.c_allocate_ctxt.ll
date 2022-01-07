; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_file_ops.c_allocate_ctxt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_file_ops.c_allocate_ctxt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.hfi1_filedata = type { i32, i32 }
%struct.hfi1_devdata = type { i32, i64, i32, i32, i32 }
%struct.hfi1_user_info = type { i32, i32, i64 }
%struct.hfi1_ctxtdata = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__*, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@HFI1_FROZEN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"user ctxtdata allocation failed\0A\00", align 1
@PROC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"[%u:%u] pid %u assigned to CPU %d (NUMA %u)\00", align 1
@current = common dso_local global %struct.TYPE_7__* null, align 8
@SC_USER = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"allocated send context %u(%u)\0A\00", align 1
@hfi1_cap_mask = common dso_local global i32 0, align 4
@hfi1_stats = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_filedata*, %struct.hfi1_devdata*, %struct.hfi1_user_info*, %struct.hfi1_ctxtdata**)* @allocate_ctxt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allocate_ctxt(%struct.hfi1_filedata* %0, %struct.hfi1_devdata* %1, %struct.hfi1_user_info* %2, %struct.hfi1_ctxtdata** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hfi1_filedata*, align 8
  %7 = alloca %struct.hfi1_devdata*, align 8
  %8 = alloca %struct.hfi1_user_info*, align 8
  %9 = alloca %struct.hfi1_ctxtdata**, align 8
  %10 = alloca %struct.hfi1_ctxtdata*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hfi1_filedata* %0, %struct.hfi1_filedata** %6, align 8
  store %struct.hfi1_devdata* %1, %struct.hfi1_devdata** %7, align 8
  store %struct.hfi1_user_info* %2, %struct.hfi1_user_info** %8, align 8
  store %struct.hfi1_ctxtdata** %3, %struct.hfi1_ctxtdata*** %9, align 8
  %13 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %7, align 8
  %14 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @HFI1_FROZEN, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %180

22:                                               ; preds = %4
  %23 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %7, align 8
  %24 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @EBUSY, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %180

30:                                               ; preds = %22
  %31 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %7, align 8
  %32 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @hfi1_get_proc_affinity(i32 %33)
  %35 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %6, align 8
  %36 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %6, align 8
  %38 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, -1
  br i1 %40, label %41, label %46

41:                                               ; preds = %30
  %42 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %6, align 8
  %43 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @cpu_to_node(i32 %44)
  store i32 %45, i32* %12, align 4
  br label %48

46:                                               ; preds = %30
  %47 = call i32 (...) @numa_node_id()
  store i32 %47, i32* %12, align 4
  br label %48

48:                                               ; preds = %46, %41
  %49 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %7, align 8
  %50 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @hfi1_create_ctxtdata(i32 %51, i32 %52, %struct.hfi1_ctxtdata** %10)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %48
  %57 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %7, align 8
  %58 = call i32 @dd_dev_err(%struct.hfi1_devdata* %57, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* %11, align 4
  store i32 %59, i32* %5, align 4
  br label %180

60:                                               ; preds = %48
  %61 = load i32, i32* @PROC, align 4
  %62 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %10, align 8
  %63 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %62, i32 0, i32 10
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %6, align 8
  %66 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %6, align 8
  %72 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %10, align 8
  %75 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %74, i32 0, i32 9
  %76 = load i32, i32* %75, align 4
  %77 = call i32 (i32, i8*, i32, i32, ...) @hfi1_cdbg(i32 %61, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %64, i32 %67, i32 %70, i32 %73, i32 %76)
  %78 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %7, align 8
  %79 = load i32, i32* @SC_USER, align 4
  %80 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %10, align 8
  %81 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %80, i32 0, i32 8
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %7, align 8
  %84 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = call %struct.TYPE_5__* @sc_alloc(%struct.hfi1_devdata* %78, i32 %79, i32 %82, i32 %85)
  %87 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %10, align 8
  %88 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %87, i32 0, i32 7
  store %struct.TYPE_5__* %86, %struct.TYPE_5__** %88, align 8
  %89 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %10, align 8
  %90 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %89, i32 0, i32 7
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = icmp ne %struct.TYPE_5__* %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %60
  %94 = load i32, i32* @ENOMEM, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %11, align 4
  br label %176

96:                                               ; preds = %60
  %97 = load i32, i32* @PROC, align 4
  %98 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %10, align 8
  %99 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %98, i32 0, i32 7
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %10, align 8
  %104 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %103, i32 0, i32 7
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 (i32, i8*, i32, i32, ...) @hfi1_cdbg(i32 %97, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %102, i32 %107)
  %109 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %10, align 8
  %110 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %109, i32 0, i32 7
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %110, align 8
  %112 = call i32 @sc_enable(%struct.TYPE_5__* %111)
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* %11, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %96
  br label %176

116:                                              ; preds = %96
  %117 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %10, align 8
  %118 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %117, i32 0, i32 6
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @__set_bit(i32 0, i32 %119)
  %121 = load %struct.hfi1_user_info*, %struct.hfi1_user_info** %8, align 8
  %122 = getelementptr inbounds %struct.hfi1_user_info, %struct.hfi1_user_info* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %116
  %126 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %10, align 8
  %127 = load %struct.hfi1_user_info*, %struct.hfi1_user_info** %8, align 8
  %128 = call i32 @init_subctxts(%struct.hfi1_ctxtdata* %126, %struct.hfi1_user_info* %127)
  br label %129

129:                                              ; preds = %125, %116
  %130 = load %struct.hfi1_user_info*, %struct.hfi1_user_info** %8, align 8
  %131 = getelementptr inbounds %struct.hfi1_user_info, %struct.hfi1_user_info* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %10, align 8
  %134 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %133, i32 0, i32 5
  store i32 %132, i32* %134, align 4
  %135 = load i32, i32* @hfi1_cap_mask, align 4
  %136 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %10, align 8
  %137 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %136, i32 0, i32 4
  store i32 %135, i32* %137, align 8
  %138 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %10, align 8
  %139 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %138, i32 0, i32 3
  %140 = call i32 @init_waitqueue_head(i32* %139)
  %141 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %10, align 8
  %142 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @strlcpy(i32 %143, i32 %146, i32 4)
  %148 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %10, align 8
  %149 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.hfi1_user_info*, %struct.hfi1_user_info** %8, align 8
  %152 = getelementptr inbounds %struct.hfi1_user_info, %struct.hfi1_user_info* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @memcpy(i32 %150, i32 %153, i32 4)
  %155 = call i32 (...) @current_uid()
  %156 = call i32 @generate_jkey(i32 %155)
  %157 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %10, align 8
  %158 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %157, i32 0, i32 0
  store i32 %156, i32* %158, align 8
  %159 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @hfi1_stats, i32 0, i32 0), align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @hfi1_stats, i32 0, i32 0), align 4
  %161 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %7, align 8
  %162 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = add nsw i32 %163, -1
  store i32 %164, i32* %162, align 8
  %165 = sext i32 %163 to i64
  %166 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %7, align 8
  %167 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = icmp eq i64 %165, %168
  br i1 %169, label %170, label %173

170:                                              ; preds = %129
  %171 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %7, align 8
  %172 = call i32 @aspm_disable_all(%struct.hfi1_devdata* %171)
  br label %173

173:                                              ; preds = %170, %129
  %174 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %10, align 8
  %175 = load %struct.hfi1_ctxtdata**, %struct.hfi1_ctxtdata*** %9, align 8
  store %struct.hfi1_ctxtdata* %174, %struct.hfi1_ctxtdata** %175, align 8
  store i32 0, i32* %5, align 4
  br label %180

176:                                              ; preds = %115, %93
  %177 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %10, align 8
  %178 = call i32 @hfi1_free_ctxt(%struct.hfi1_ctxtdata* %177)
  %179 = load i32, i32* %11, align 4
  store i32 %179, i32* %5, align 4
  br label %180

180:                                              ; preds = %176, %173, %56, %27, %19
  %181 = load i32, i32* %5, align 4
  ret i32 %181
}

declare dso_local i32 @hfi1_get_proc_affinity(i32) #1

declare dso_local i32 @cpu_to_node(i32) #1

declare dso_local i32 @numa_node_id(...) #1

declare dso_local i32 @hfi1_create_ctxtdata(i32, i32, %struct.hfi1_ctxtdata**) #1

declare dso_local i32 @dd_dev_err(%struct.hfi1_devdata*, i8*) #1

declare dso_local i32 @hfi1_cdbg(i32, i8*, i32, i32, ...) #1

declare dso_local %struct.TYPE_5__* @sc_alloc(%struct.hfi1_devdata*, i32, i32, i32) #1

declare dso_local i32 @sc_enable(%struct.TYPE_5__*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @init_subctxts(%struct.hfi1_ctxtdata*, %struct.hfi1_user_info*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @generate_jkey(i32) #1

declare dso_local i32 @current_uid(...) #1

declare dso_local i32 @aspm_disable_all(%struct.hfi1_devdata*) #1

declare dso_local i32 @hfi1_free_ctxt(%struct.hfi1_ctxtdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
