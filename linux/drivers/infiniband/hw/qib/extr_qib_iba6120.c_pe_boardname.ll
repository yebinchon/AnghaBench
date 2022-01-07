; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba6120.c_pe_boardname.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba6120.c_pe_boardname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i8*, i32, i32, i32, i32 }

@Revision = common dso_local global i32 0, align 4
@BoardID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"InfiniPath_QLE7140\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Unknown 6120 board with ID %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Unknown_InfiniPath_6120\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"Unsupported InfiniPath hardware revision %u.%u!\0A\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"ChipABI %u.%u, %s, InfiniPath%u %u.%u, SW Compat %u\0A\00", align 1
@QIB_CHIP_VERS_MAJ = common dso_local global i32 0, align 4
@QIB_CHIP_VERS_MIN = common dso_local global i32 0, align 4
@Revision_R = common dso_local global i32 0, align 4
@Arch = common dso_local global i32 0, align 4
@SW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_devdata*)* @pe_boardname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pe_boardname(%struct.qib_devdata* %0) #0 {
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
  switch i32 %10, label %14 [
    i32 2, label %11
  ]

11:                                               ; preds = %1
  %12 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %13 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %12, i32 0, i32 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  br label %20

14:                                               ; preds = %1
  %15 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i32 (%struct.qib_devdata*, i8*, i32, ...) @qib_dev_err(%struct.qib_devdata* %15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %19 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %18, i32 0, i32 0
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8** %19, align 8
  br label %20

20:                                               ; preds = %14, %11
  %21 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %22 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 4
  br i1 %24, label %35, label %25

25:                                               ; preds = %20
  %26 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %27 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %32 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = icmp sgt i32 %33, 2
  br i1 %34, label %35, label %44

35:                                               ; preds = %30, %25, %20
  %36 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %37 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %38 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %41 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (%struct.qib_devdata*, i8*, i32, ...) @qib_dev_err(%struct.qib_devdata* %36, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %39, i32 %42)
  br label %44

44:                                               ; preds = %35, %30
  %45 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %46 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @QIB_CHIP_VERS_MAJ, align 4
  %49 = load i32, i32* @QIB_CHIP_VERS_MIN, align 4
  %50 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %51 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %54 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @Revision_R, align 4
  %57 = load i32, i32* @Arch, align 4
  %58 = call i32 @SYM_FIELD(i32 %55, i32 %56, i32 %57)
  %59 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %60 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %63 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %66 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @Revision_R, align 4
  %69 = load i32, i32* @SW, align 4
  %70 = call i32 @SYM_FIELD(i32 %67, i32 %68, i32 %69)
  %71 = call i32 @snprintf(i32 %47, i32 4, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i32 %48, i32 %49, i8* %52, i32 %58, i32 %61, i32 %64, i32 %70)
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
