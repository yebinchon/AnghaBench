; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srpt/extr_ib_srpt.c_srpt_get_svc_entries.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srpt/extr_ib_srpt.c_srpt_get_svc_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_dm_mad = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i8* }
%struct.ib_dm_svc_entries = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@DM_MAD_STATUS_INVALID_FIELD = common dso_local global i32 0, align 4
@DM_MAD_STATUS_NO_IOC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s%016llx\00", align 1
@SRP_SERVICE_NAME_PREFIX = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, %struct.ib_dm_mad*)* @srpt_get_svc_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @srpt_get_svc_entries(i32 %0, i32 %1, i32 %2, i32 %3, %struct.ib_dm_mad* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ib_dm_mad*, align 8
  %11 = alloca %struct.ib_dm_svc_entries*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.ib_dm_mad* %4, %struct.ib_dm_mad** %10, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @WARN_ON(i32 %15)
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load i32, i32* %7, align 4
  %21 = icmp sgt i32 %20, 16
  br i1 %21, label %22, label %28

22:                                               ; preds = %19, %5
  %23 = load i32, i32* @DM_MAD_STATUS_INVALID_FIELD, align 4
  %24 = call i8* @cpu_to_be16(i32 %23)
  %25 = load %struct.ib_dm_mad*, %struct.ib_dm_mad** %10, align 8
  %26 = getelementptr inbounds %struct.ib_dm_mad, %struct.ib_dm_mad* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i8* %24, i8** %27, align 8
  br label %70

28:                                               ; preds = %19
  %29 = load i32, i32* %7, align 4
  %30 = icmp sgt i32 %29, 2
  br i1 %30, label %38, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %8, align 4
  %37 = icmp sgt i32 %36, 1
  br i1 %37, label %38, label %44

38:                                               ; preds = %35, %31, %28
  %39 = load i32, i32* @DM_MAD_STATUS_NO_IOC, align 4
  %40 = call i8* @cpu_to_be16(i32 %39)
  %41 = load %struct.ib_dm_mad*, %struct.ib_dm_mad** %10, align 8
  %42 = getelementptr inbounds %struct.ib_dm_mad, %struct.ib_dm_mad* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i8* %40, i8** %43, align 8
  br label %70

44:                                               ; preds = %35
  %45 = load %struct.ib_dm_mad*, %struct.ib_dm_mad** %10, align 8
  %46 = getelementptr inbounds %struct.ib_dm_mad, %struct.ib_dm_mad* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to %struct.ib_dm_svc_entries*
  store %struct.ib_dm_svc_entries* %48, %struct.ib_dm_svc_entries** %11, align 8
  %49 = load %struct.ib_dm_svc_entries*, %struct.ib_dm_svc_entries** %11, align 8
  %50 = call i32 @memset(%struct.ib_dm_svc_entries* %49, i32 0, i32 8)
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @cpu_to_be64(i32 %51)
  %53 = load %struct.ib_dm_svc_entries*, %struct.ib_dm_svc_entries** %11, align 8
  %54 = getelementptr inbounds %struct.ib_dm_svc_entries, %struct.ib_dm_svc_entries* %53, i32 0, i32 0
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  store i32 %52, i32* %57, align 4
  %58 = load %struct.ib_dm_svc_entries*, %struct.ib_dm_svc_entries** %11, align 8
  %59 = getelementptr inbounds %struct.ib_dm_svc_entries, %struct.ib_dm_svc_entries* %58, i32 0, i32 0
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i8*, i8** @SRP_SERVICE_NAME_PREFIX, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @snprintf(i32 %63, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %64, i32 %65)
  %67 = load %struct.ib_dm_mad*, %struct.ib_dm_mad** %10, align 8
  %68 = getelementptr inbounds %struct.ib_dm_mad, %struct.ib_dm_mad* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store i8* null, i8** %69, align 8
  br label %70

70:                                               ; preds = %44, %38, %22
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @memset(%struct.ib_dm_svc_entries*, i32, i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
