; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.c_get_csrow_nr_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.c_get_csrow_nr_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd64_pvt = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.amd64_pvt*, i32, i32, i32)* }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"csrow: %d, channel: %d, DBAM idx: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"nr_pages/channel: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amd64_pvt*, i32, i32)* @get_csrow_nr_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_csrow_nr_pages(%struct.amd64_pvt* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.amd64_pvt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.amd64_pvt* %0, %struct.amd64_pvt** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load %struct.amd64_pvt*, %struct.amd64_pvt** %4, align 8
  %15 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  br label %21

17:                                               ; preds = %3
  %18 = load %struct.amd64_pvt*, %struct.amd64_pvt** %4, align 8
  %19 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  br label %21

21:                                               ; preds = %17, %13
  %22 = phi i32 [ %16, %13 ], [ %20, %17 ]
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %8, align 4
  %24 = load %struct.amd64_pvt*, %struct.amd64_pvt** %4, align 8
  %25 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* %8, align 4
  %30 = ashr i32 %29, 1
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @DBAM_DIMM(i32 %31, i32 %32)
  store i32 %33, i32* %9, align 4
  br label %40

34:                                               ; preds = %21
  %35 = load i32, i32* %8, align 4
  %36 = ashr i32 %35, 1
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.amd64_pvt*, %struct.amd64_pvt** %4, align 8
  %39 = call i32 @f17_get_cs_mode(i32 %36, i32 %37, %struct.amd64_pvt* %38)
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %34, %28
  %41 = load %struct.amd64_pvt*, %struct.amd64_pvt** %4, align 8
  %42 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %41, i32 0, i32 2
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32 (%struct.amd64_pvt*, i32, i32, i32)*, i32 (%struct.amd64_pvt*, i32, i32, i32)** %44, align 8
  %46 = load %struct.amd64_pvt*, %struct.amd64_pvt** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 %45(%struct.amd64_pvt* %46, i32 %47, i32 %48, i32 %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* @PAGE_SHIFT, align 4
  %52 = sub nsw i32 20, %51
  %53 = load i32, i32* %10, align 4
  %54 = shl i32 %53, %52
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 (i32, i8*, i32, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %56, i32 %57)
  %59 = load i32, i32* %10, align 4
  %60 = call i32 (i32, i8*, i32, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %10, align 4
  ret i32 %61
}

declare dso_local i32 @DBAM_DIMM(i32, i32) #1

declare dso_local i32 @f17_get_cs_mode(i32, i32, %struct.amd64_pvt*) #1

declare dso_local i32 @edac_dbg(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
