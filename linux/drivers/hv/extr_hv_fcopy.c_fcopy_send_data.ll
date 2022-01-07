; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_hv_fcopy.c_fcopy_send_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_hv_fcopy.c_fcopy_send_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.work_struct = type { i32 }
%struct.hv_start_fcopy = type { i32, i32, i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@fcopy_transaction = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@W_MAX_PATH = common dso_local global i32 0, align 4
@UTF16_LITTLE_ENDIAN = common dso_local global i32 0, align 4
@HVUTIL_USERSPACE_REQ = common dso_local global i32 0, align 4
@hvt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"FCP: failed to communicate to the daemon: %d\0A\00", align 1
@fcopy_timeout_work = common dso_local global i32 0, align 4
@HV_E_FAIL = common dso_local global i32 0, align 4
@HVUTIL_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @fcopy_send_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fcopy_send_data(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca %struct.hv_start_fcopy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hv_start_fcopy*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  store %struct.hv_start_fcopy* null, %struct.hv_start_fcopy** %3, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fcopy_transaction, i32 0, i32 2), align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %65 [
    i32 129, label %13
    i32 128, label %62
  ]

13:                                               ; preds = %1
  store i32 32, i32* %8, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.hv_start_fcopy* @kzalloc(i32 32, i32 %14)
  store %struct.hv_start_fcopy* %15, %struct.hv_start_fcopy** %3, align 8
  %16 = load %struct.hv_start_fcopy*, %struct.hv_start_fcopy** %3, align 8
  %17 = icmp ne %struct.hv_start_fcopy* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  br label %90

19:                                               ; preds = %13
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.hv_start_fcopy*, %struct.hv_start_fcopy** %3, align 8
  %22 = getelementptr inbounds %struct.hv_start_fcopy, %struct.hv_start_fcopy* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fcopy_transaction, i32 0, i32 2), align 8
  %25 = bitcast %struct.TYPE_5__* %24 to %struct.hv_start_fcopy*
  store %struct.hv_start_fcopy* %25, %struct.hv_start_fcopy** %5, align 8
  %26 = load %struct.hv_start_fcopy*, %struct.hv_start_fcopy** %5, align 8
  %27 = getelementptr inbounds %struct.hv_start_fcopy, %struct.hv_start_fcopy* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i32*
  %30 = load i32, i32* @W_MAX_PATH, align 4
  %31 = load i32, i32* @UTF16_LITTLE_ENDIAN, align 4
  %32 = load %struct.hv_start_fcopy*, %struct.hv_start_fcopy** %3, align 8
  %33 = getelementptr inbounds %struct.hv_start_fcopy, %struct.hv_start_fcopy* %32, i32 0, i32 3
  %34 = bitcast i64* %33 to i32*
  %35 = load i32, i32* @W_MAX_PATH, align 4
  %36 = sub nsw i32 %35, 1
  %37 = call i32 @utf16s_to_utf8s(i32* %29, i32 %30, i32 %31, i32* %34, i32 %36)
  %38 = load %struct.hv_start_fcopy*, %struct.hv_start_fcopy** %5, align 8
  %39 = getelementptr inbounds %struct.hv_start_fcopy, %struct.hv_start_fcopy* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to i32*
  %42 = load i32, i32* @W_MAX_PATH, align 4
  %43 = load i32, i32* @UTF16_LITTLE_ENDIAN, align 4
  %44 = load %struct.hv_start_fcopy*, %struct.hv_start_fcopy** %3, align 8
  %45 = getelementptr inbounds %struct.hv_start_fcopy, %struct.hv_start_fcopy* %44, i32 0, i32 2
  %46 = bitcast i64* %45 to i32*
  %47 = load i32, i32* @W_MAX_PATH, align 4
  %48 = sub nsw i32 %47, 1
  %49 = call i32 @utf16s_to_utf8s(i32* %41, i32 %42, i32 %43, i32* %46, i32 %48)
  %50 = load %struct.hv_start_fcopy*, %struct.hv_start_fcopy** %5, align 8
  %51 = getelementptr inbounds %struct.hv_start_fcopy, %struct.hv_start_fcopy* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.hv_start_fcopy*, %struct.hv_start_fcopy** %3, align 8
  %54 = getelementptr inbounds %struct.hv_start_fcopy, %struct.hv_start_fcopy* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.hv_start_fcopy*, %struct.hv_start_fcopy** %5, align 8
  %56 = getelementptr inbounds %struct.hv_start_fcopy, %struct.hv_start_fcopy* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.hv_start_fcopy*, %struct.hv_start_fcopy** %3, align 8
  %59 = getelementptr inbounds %struct.hv_start_fcopy, %struct.hv_start_fcopy* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.hv_start_fcopy*, %struct.hv_start_fcopy** %3, align 8
  %61 = bitcast %struct.hv_start_fcopy* %60 to i8*
  store i8* %61, i8** %6, align 8
  br label %69

62:                                               ; preds = %1
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fcopy_transaction, i32 0, i32 2), align 8
  %64 = bitcast %struct.TYPE_5__* %63 to i8*
  store i8* %64, i8** %6, align 8
  store i32 4, i32* %8, align 4
  br label %69

65:                                               ; preds = %1
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fcopy_transaction, i32 0, i32 2), align 8
  %67 = bitcast %struct.TYPE_5__* %66 to i8*
  store i8* %67, i8** %6, align 8
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fcopy_transaction, i32 0, i32 0), align 8
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %65, %62, %19
  %70 = load i32, i32* @HVUTIL_USERSPACE_REQ, align 4
  store i32 %70, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fcopy_transaction, i32 0, i32 1), align 4
  %71 = load i32, i32* @hvt, align 4
  %72 = load i8*, i8** %6, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @hvutil_transport_send(i32 %71, i8* %72, i32 %73, i32* null)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %69
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @pr_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %78)
  %80 = call i64 @cancel_delayed_work_sync(i32* @fcopy_timeout_work)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load i32, i32* @HV_E_FAIL, align 4
  %84 = call i32 @fcopy_respond_to_host(i32 %83)
  %85 = load i32, i32* @HVUTIL_READY, align 4
  store i32 %85, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fcopy_transaction, i32 0, i32 1), align 4
  br label %86

86:                                               ; preds = %82, %77
  br label %87

87:                                               ; preds = %86, %69
  %88 = load %struct.hv_start_fcopy*, %struct.hv_start_fcopy** %3, align 8
  %89 = call i32 @kfree(%struct.hv_start_fcopy* %88)
  br label %90

90:                                               ; preds = %87, %18
  ret void
}

declare dso_local %struct.hv_start_fcopy* @kzalloc(i32, i32) #1

declare dso_local i32 @utf16s_to_utf8s(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @hvutil_transport_send(i32, i8*, i32, i32*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i64 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @fcopy_respond_to_host(i32) #1

declare dso_local i32 @kfree(%struct.hv_start_fcopy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
