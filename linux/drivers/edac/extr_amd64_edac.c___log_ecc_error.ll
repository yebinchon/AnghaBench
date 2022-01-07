; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.c___log_ecc_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.c___log_ecc_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32 }
%struct.err_info = type { i32, i32, i32, i32, i32, i32 }

@HW_EVENT_ERR_CORRECTED = common dso_local global i32 0, align 4
@HW_EVENT_ERR_UNCORRECTED = common dso_local global i32 0, align 4
@HW_EVENT_ERR_DEFERRED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Something is rotten in the state of Denmark.\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Failed to map error addr to a node\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Failed to map error addr to a csrow\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"Unknown syndrome - possible error reporting race\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"MCA_SYND not valid - unknown syndrome and csrow\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Cannot decode normalized address\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"WTF error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*, %struct.err_info*, i32)* @__log_ecc_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__log_ecc_error(%struct.mem_ctl_info* %0, %struct.err_info* %1, i32 %2) #0 {
  %4 = alloca %struct.mem_ctl_info*, align 8
  %5 = alloca %struct.err_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %4, align 8
  store %struct.err_info* %1, %struct.err_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i32, i32* @HW_EVENT_ERR_CORRECTED, align 4
  store i32 %12, i32* %7, align 4
  br label %27

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load i32, i32* @HW_EVENT_ERR_UNCORRECTED, align 4
  store i32 %17, i32* %7, align 4
  br label %26

18:                                               ; preds = %13
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, 3
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32, i32* @HW_EVENT_ERR_DEFERRED, align 4
  store i32 %22, i32* %7, align 4
  br label %25

23:                                               ; preds = %18
  %24 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %58

25:                                               ; preds = %21
  br label %26

26:                                               ; preds = %25, %16
  br label %27

27:                                               ; preds = %26, %11
  %28 = load %struct.err_info*, %struct.err_info** %5, align 8
  %29 = getelementptr inbounds %struct.err_info, %struct.err_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %37 [
    i32 133, label %31
    i32 130, label %32
    i32 131, label %33
    i32 132, label %34
    i32 128, label %35
    i32 129, label %36
  ]

31:                                               ; preds = %27
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %38

32:                                               ; preds = %27
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  br label %38

33:                                               ; preds = %27
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  br label %38

34:                                               ; preds = %27
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i8** %8, align 8
  br label %38

35:                                               ; preds = %27
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i8** %8, align 8
  br label %38

36:                                               ; preds = %27
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i8** %8, align 8
  br label %38

37:                                               ; preds = %27
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8** %8, align 8
  br label %38

38:                                               ; preds = %37, %36, %35, %34, %33, %32, %31
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %41 = load %struct.err_info*, %struct.err_info** %5, align 8
  %42 = getelementptr inbounds %struct.err_info, %struct.err_info* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.err_info*, %struct.err_info** %5, align 8
  %45 = getelementptr inbounds %struct.err_info, %struct.err_info* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.err_info*, %struct.err_info** %5, align 8
  %48 = getelementptr inbounds %struct.err_info, %struct.err_info* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.err_info*, %struct.err_info** %5, align 8
  %51 = getelementptr inbounds %struct.err_info, %struct.err_info* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.err_info*, %struct.err_info** %5, align 8
  %54 = getelementptr inbounds %struct.err_info, %struct.err_info* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i8*, i8** %8, align 8
  %57 = call i32 @edac_mc_handle_error(i32 %39, %struct.mem_ctl_info* %40, i32 1, i32 %43, i32 %46, i32 %49, i32 %52, i32 %55, i32 -1, i8* %56, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %58

58:                                               ; preds = %38, %23
  ret void
}

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @edac_mc_handle_error(i32, %struct.mem_ctl_info*, i32, i32, i32, i32, i32, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
