; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mxl5xx.c_get_fwinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mxl5xx.c_get_fwinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxl = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"chipID=%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"chipVer=%08x\0A\00", align 1
@HYDRA_FIRMWARE_VERSION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"FWVer=%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxl*)* @get_fwinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_fwinfo(%struct.mxl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mxl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mxl* %0, %struct.mxl** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.mxl*, %struct.mxl** %3, align 8
  %7 = call i32 @read_by_mnemonic(%struct.mxl* %6, i32 -1879047792, i32 0, i32 3, i32* %5)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %49

12:                                               ; preds = %1
  %13 = load %struct.mxl*, %struct.mxl** %3, align 8
  %14 = getelementptr inbounds %struct.mxl, %struct.mxl* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @dev_info(i32 %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.mxl*, %struct.mxl** %3, align 8
  %19 = call i32 @read_by_mnemonic(%struct.mxl* %18, i32 -2147287036, i32 8, i32 8, i32* %5)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %12
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %49

24:                                               ; preds = %12
  %25 = load %struct.mxl*, %struct.mxl** %3, align 8
  %26 = getelementptr inbounds %struct.mxl, %struct.mxl* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @dev_info(i32 %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load %struct.mxl*, %struct.mxl** %3, align 8
  %31 = load i32, i32* @HYDRA_FIRMWARE_VERSION, align 4
  %32 = call i32 @read_register(%struct.mxl* %30, i32 %31, i32* %5)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %24
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %2, align 4
  br label %49

37:                                               ; preds = %24
  %38 = load %struct.mxl*, %struct.mxl** %3, align 8
  %39 = getelementptr inbounds %struct.mxl, %struct.mxl* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @dev_info(i32 %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.mxl*, %struct.mxl** %3, align 8
  %45 = getelementptr inbounds %struct.mxl, %struct.mxl* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32 %43, i32* %47, align 4
  %48 = load i32, i32* %4, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %37, %35, %22, %10
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @read_by_mnemonic(%struct.mxl*, i32, i32, i32, i32*) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @read_register(%struct.mxl*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
