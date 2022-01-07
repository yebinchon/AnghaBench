; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7220.c_qib_7220_boardname.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7220.c_qib_7220_boardname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i8*, i32, i32, i32, i32 }

@Revision = common dso_local global i32 0, align 4
@BoardID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"InfiniPath_QLE7240\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"InfiniPath_QLE7280\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Unknown 7220 board with ID %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Unknown_InfiniPath_7220\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"Unsupported InfiniPath hardware revision %u.%u!\0A\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"ChipABI %u.%u, %s, InfiniPath%u %u.%u, SW Compat %u\0A\00", align 1
@QIB_CHIP_VERS_MAJ = common dso_local global i32 0, align 4
@QIB_CHIP_VERS_MIN = common dso_local global i32 0, align 4
@Revision_R = common dso_local global i32 0, align 4
@Arch = common dso_local global i32 0, align 4
@SW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_devdata*)* @qib_7220_boardname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qib_7220_boardname(%struct.qib_devdata* %0) #0 {
  %2 = alloca %struct.qib_devdata*, align 8
  %3 = alloca i32, align 4
  store %struct.qib_devdata* %0, %struct.qib_devdata** %2, align 8
  %4 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %5 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @Revision, align 4
  %8 = load i32, i32* @BoardID, align 4
  %9 = call i32 @SYM_FIELD(i32 %6, i32 %7, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  switch i32 %10, label %17 [
    i32 1, label %11
    i32 2, label %14
  ]

11:                                               ; preds = %1
  %12 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %13 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %12, i32 0, i32 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  br label %23

14:                                               ; preds = %1
  %15 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %16 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %15, i32 0, i32 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8** %16, align 8
  br label %23

17:                                               ; preds = %1
  %18 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %19 = load i32, i32* %3, align 4
  %20 = call i32 (%struct.qib_devdata*, i8*, i32, ...) @qib_dev_err(%struct.qib_devdata* %18, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %19)
  %21 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %22 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %21, i32 0, i32 0
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8** %22, align 8
  br label %23

23:                                               ; preds = %17, %14, %11
  %24 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %25 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 5
  br i1 %27, label %38, label %28

28:                                               ; preds = %23
  %29 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %30 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %35 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = icmp sgt i32 %36, 2
  br i1 %37, label %38, label %47

38:                                               ; preds = %33, %28, %23
  %39 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %40 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %41 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %44 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (%struct.qib_devdata*, i8*, i32, ...) @qib_dev_err(%struct.qib_devdata* %39, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i32 %42, i32 %45)
  br label %47

47:                                               ; preds = %38, %33
  %48 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %49 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @QIB_CHIP_VERS_MAJ, align 4
  %52 = load i32, i32* @QIB_CHIP_VERS_MIN, align 4
  %53 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %54 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %57 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @Revision_R, align 4
  %60 = load i32, i32* @Arch, align 4
  %61 = call i32 @SYM_FIELD(i32 %58, i32 %59, i32 %60)
  %62 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %63 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %66 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %69 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @Revision_R, align 4
  %72 = load i32, i32* @SW, align 4
  %73 = call i32 @SYM_FIELD(i32 %70, i32 %71, i32 %72)
  %74 = call i32 @snprintf(i32 %50, i32 4, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i32 %51, i32 %52, i8* %55, i32 %61, i32 %64, i32 %67, i32 %73)
  ret void
}

declare dso_local i32 @SYM_FIELD(i32, i32, i32) #1

declare dso_local i32 @qib_dev_err(%struct.qib_devdata*, i8*, i32, ...) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
