; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_mce_amd.c_decode_error_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_mce_amd.c_decode_error_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mce = type { i32, i32 }

@MCI_STATUS_UC = common dso_local global i32 0, align 4
@MCI_STATUS_PCC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"System Fatal error.\00", align 1
@MCG_STATUS_RIPV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Uncorrected, software restartable error.\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Uncorrected, software containable error.\00", align 1
@MCI_STATUS_DEFERRED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Deferred error, no action required.\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Corrected error, no action required.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.mce*)* @decode_error_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @decode_error_status(%struct.mce* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mce*, align 8
  store %struct.mce* %0, %struct.mce** %3, align 8
  %4 = load %struct.mce*, %struct.mce** %3, align 8
  %5 = getelementptr inbounds %struct.mce, %struct.mce* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @MCI_STATUS_UC, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %27

10:                                               ; preds = %1
  %11 = load %struct.mce*, %struct.mce** %3, align 8
  %12 = getelementptr inbounds %struct.mce, %struct.mce* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @MCI_STATUS_PCC, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %36

18:                                               ; preds = %10
  %19 = load %struct.mce*, %struct.mce** %3, align 8
  %20 = getelementptr inbounds %struct.mce, %struct.mce* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @MCG_STATUS_RIPV, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %36

26:                                               ; preds = %18
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %36

27:                                               ; preds = %1
  %28 = load %struct.mce*, %struct.mce** %3, align 8
  %29 = getelementptr inbounds %struct.mce, %struct.mce* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @MCI_STATUS_DEFERRED, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %36

35:                                               ; preds = %27
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %36

36:                                               ; preds = %35, %34, %26, %25, %17
  %37 = load i8*, i8** %2, align 8
  ret i8* %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
