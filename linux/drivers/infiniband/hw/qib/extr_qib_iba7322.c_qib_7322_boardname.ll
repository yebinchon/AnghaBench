; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7322.c_qib_7322_boardname.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7322.c_qib_7322_boardname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32 }

@DUAL_PORT_CAP = common dso_local global i32 0, align 4
@Revision = common dso_local global i32 0, align 4
@BoardID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"InfiniPath_QLE7342_Emulation\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"InfiniPath_QLE7340\00", align 1
@QIB_HAS_QSFP = common dso_local global i32 0, align 4
@PORT_SPD_CAP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"InfiniPath_QLE7342\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"InfiniPath_QMI7342\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"InfiniPath_Unsupported7342\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Unsupported version of QMH7342\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"InfiniPath_QMH7342\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"InfiniPath_QME7342\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"InfiniPath_QME7362\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"Intel IB QDR 1P FLR-QSFP Adptr\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"InfiniPath_QLE7342_TEST\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"InfiniPath_QLE73xy_UNKNOWN\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"Unknown 7322 board type %u\0A\00", align 1
@.str.13 = private unnamed_addr constant [53 x i8] c"ChipABI %u.%u, %s, InfiniPath%u %u.%u, SW Compat %u\0A\00", align 1
@QIB_CHIP_VERS_MAJ = common dso_local global i32 0, align 4
@QIB_CHIP_VERS_MIN = common dso_local global i32 0, align 4
@Revision_R = common dso_local global i32 0, align 4
@Arch = common dso_local global i32 0, align 4
@SW = common dso_local global i32 0, align 4
@qib_singleport = common dso_local global i64 0, align 8
@PORT_SPD_CAP_SHIFT = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [54 x i8] c"IB%u: Forced to single port mode by module parameter\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_devdata*)* @qib_7322_boardname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_7322_boardname(%struct.qib_devdata* %0) #0 {
  %2 = alloca %struct.qib_devdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.qib_devdata* %0, %struct.qib_devdata** %2, align 8
  %5 = load i32, i32* @DUAL_PORT_CAP, align 4
  store i32 %5, i32* %4, align 4
  %6 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %7 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %6, i32 0, i32 6
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @Revision, align 4
  %10 = load i32, i32* @BoardID, align 4
  %11 = call i32 @SYM_FIELD(i32 %8, i32 %9, i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  switch i32 %12, label %71 [
    i32 0, label %13
    i32 1, label %16
    i32 2, label %25
    i32 3, label %33
    i32 4, label %36
    i32 129, label %41
    i32 130, label %44
    i32 8, label %47
    i32 128, label %55
    i32 15, label %63
  ]

13:                                               ; preds = %1
  %14 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %15 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %14, i32 0, i32 0
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8** %15, align 8
  br label %77

16:                                               ; preds = %1
  %17 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %18 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %17, i32 0, i32 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8** %18, align 8
  %19 = load i32, i32* @QIB_HAS_QSFP, align 4
  %20 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %21 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %20, i32 0, i32 8
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load i32, i32* @PORT_SPD_CAP, align 4
  store i32 %24, i32* %4, align 4
  br label %77

25:                                               ; preds = %1
  %26 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %27 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %26, i32 0, i32 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8** %27, align 8
  %28 = load i32, i32* @QIB_HAS_QSFP, align 4
  %29 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %30 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %29, i32 0, i32 8
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  br label %77

33:                                               ; preds = %1
  %34 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %35 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %34, i32 0, i32 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8** %35, align 8
  br label %77

36:                                               ; preds = %1
  %37 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %38 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %37, i32 0, i32 0
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8** %38, align 8
  %39 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %40 = call i32 (%struct.qib_devdata*, i8*, ...) @qib_dev_err(%struct.qib_devdata* %39, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %77

41:                                               ; preds = %1
  %42 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %43 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %42, i32 0, i32 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8** %43, align 8
  store i32 36, i32* %4, align 4
  br label %77

44:                                               ; preds = %1
  %45 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %46 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %45, i32 0, i32 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8** %46, align 8
  br label %77

47:                                               ; preds = %1
  %48 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %49 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %48, i32 0, i32 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8** %49, align 8
  %50 = load i32, i32* @QIB_HAS_QSFP, align 4
  %51 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %52 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %51, i32 0, i32 8
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  br label %77

55:                                               ; preds = %1
  %56 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %57 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %56, i32 0, i32 0
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i8** %57, align 8
  %58 = load i32, i32* @QIB_HAS_QSFP, align 4
  %59 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %60 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %59, i32 0, i32 8
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %77

63:                                               ; preds = %1
  %64 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %65 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %64, i32 0, i32 0
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i8** %65, align 8
  %66 = load i32, i32* @QIB_HAS_QSFP, align 4
  %67 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %68 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %67, i32 0, i32 8
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  br label %77

71:                                               ; preds = %1
  %72 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %73 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %72, i32 0, i32 0
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0), i8** %73, align 8
  %74 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %75 = load i32, i32* %3, align 4
  %76 = call i32 (%struct.qib_devdata*, i8*, ...) @qib_dev_err(%struct.qib_devdata* %74, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %71, %63, %55, %47, %44, %41, %36, %33, %25, %16, %13
  %78 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %79 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %78, i32 0, i32 1
  store i32 1, i32* %79, align 8
  %80 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %81 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %80, i32 0, i32 7
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @QIB_CHIP_VERS_MAJ, align 4
  %84 = load i32, i32* @QIB_CHIP_VERS_MIN, align 4
  %85 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %86 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %89 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %88, i32 0, i32 6
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @Revision_R, align 4
  %92 = load i32, i32* @Arch, align 4
  %93 = call i32 @SYM_FIELD(i32 %90, i32 %91, i32 %92)
  %94 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %95 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %98 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %101 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %100, i32 0, i32 6
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @Revision_R, align 4
  %104 = load i32, i32* @SW, align 4
  %105 = call i32 @SYM_FIELD(i32 %102, i32 %103, i32 %104)
  %106 = call i32 @snprintf(i32 %82, i32 4, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.13, i64 0, i64 0), i32 %83, i32 %84, i8* %87, i32 %93, i32 %96, i32 %99, i32 %105)
  %107 = load i64, i64* @qib_singleport, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %127

109:                                              ; preds = %77
  %110 = load i32, i32* %4, align 4
  %111 = load i32, i32* @PORT_SPD_CAP_SHIFT, align 4
  %112 = lshr i32 %110, %111
  %113 = load i32, i32* @PORT_SPD_CAP, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %127

116:                                              ; preds = %109
  %117 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %118 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %121 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @qib_devinfo(i32 %119, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.14, i64 0, i64 0), i32 %122)
  %124 = load i32, i32* @PORT_SPD_CAP, align 4
  %125 = load i32, i32* %4, align 4
  %126 = and i32 %125, %124
  store i32 %126, i32* %4, align 4
  br label %127

127:                                              ; preds = %116, %109, %77
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local i32 @SYM_FIELD(i32, i32, i32) #1

declare dso_local i32 @qib_dev_err(%struct.qib_devdata*, i8*, ...) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @qib_devinfo(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
