; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_atmel_mxt_ts.c_mxt_proc_t6_messages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_atmel_mxt_ts.c_mxt_proc_t6_messages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxt_data = type { i64, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"T6 Config Checksum: 0x%06X\0A\00", align 1
@MXT_T6_STATUS_RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"T6 Status 0x%02X%s%s%s%s%s%s%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" OK\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [7 x i8] c" RESET\00", align 1
@MXT_T6_STATUS_OFL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c" OFL\00", align 1
@MXT_T6_STATUS_SIGERR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c" SIGERR\00", align 1
@MXT_T6_STATUS_CAL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c" CAL\00", align 1
@MXT_T6_STATUS_CFGERR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c" CFGERR\00", align 1
@MXT_T6_STATUS_COMSERR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c" COMSERR\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mxt_data*, i32*)* @mxt_proc_t6_messages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxt_proc_t6_messages(%struct.mxt_data* %0, i32* %1) #0 {
  %3 = alloca %struct.mxt_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.mxt_data* %0, %struct.mxt_data** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %9 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %8, i32 0, i32 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %5, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 2
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 3
  %20 = load i32, i32* %19, align 4
  %21 = shl i32 %20, 8
  %22 = or i32 %17, %21
  %23 = load i32*, i32** %4, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 4
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %25, 16
  %27 = or i32 %22, %26
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %31 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %29, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %2
  %35 = load i64, i64* %7, align 8
  %36 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %37 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load %struct.device*, %struct.device** %5, align 8
  %39 = load i64, i64* %7, align 8
  %40 = trunc i64 %39 to i32
  %41 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %38, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %34, %2
  %43 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %44 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %43, i32 0, i32 3
  %45 = call i32 @complete(i32* %44)
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @MXT_T6_STATUS_RESET, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %42
  %51 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %52 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %51, i32 0, i32 2
  %53 = call i32 @complete(i32* %52)
  br label %54

54:                                               ; preds = %50, %42
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %57 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %55, %58
  br i1 %59, label %60, label %104

60:                                               ; preds = %54
  %61 = load %struct.device*, %struct.device** %5, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp eq i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @MXT_T6_STATUS_RESET, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @MXT_T6_STATUS_OFL, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @MXT_T6_STATUS_SIGERR, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @MXT_T6_STATUS_CAL, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @MXT_T6_STATUS_CFGERR, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @MXT_T6_STATUS_COMSERR, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %103 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %61, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %62, i8* %66, i8* %72, i8* %78, i8* %84, i8* %90, i8* %96, i8* %102)
  br label %104

104:                                              ; preds = %60, %54
  %105 = load i32, i32* %6, align 4
  %106 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %107 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 8
  ret void
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
