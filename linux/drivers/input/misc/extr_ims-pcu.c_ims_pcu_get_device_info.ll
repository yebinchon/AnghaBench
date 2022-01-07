; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_ims-pcu.c_ims_pcu_get_device_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_ims-pcu.c_ims_pcu_get_device_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ims_pcu = type { i32*, i32, i32, i32, i32, i32, i32, i32 }

@GET_FW_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"GET_FW_VERSION command failed, error: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"%02d%02d%02d%02d.%c%c\00", align 1
@GET_BL_VERSION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"GET_BL_VERSION command failed, error: %d\0A\00", align 1
@RESET_REASON = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"RESET_REASON command failed, error: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@IMS_PCU_DATA_OFFSET = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [50 x i8] c"P/N: %s, MD: %s, S/N: %s, FW: %s, BL: %s, RR: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ims_pcu*)* @ims_pcu_get_device_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ims_pcu_get_device_info(%struct.ims_pcu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ims_pcu*, align 8
  %4 = alloca i32, align 4
  store %struct.ims_pcu* %0, %struct.ims_pcu** %3, align 8
  %5 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %6 = call i32 @ims_pcu_get_info(%struct.ims_pcu* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %151

11:                                               ; preds = %1
  %12 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %13 = load i32, i32* @GET_FW_VERSION, align 4
  %14 = call i32 @ims_pcu_execute_query(%struct.ims_pcu* %12, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %11
  %18 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %19 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %18, i32 0, i32 7
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @dev_err(i32 %20, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %151

24:                                               ; preds = %11
  %25 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %26 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %29 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %34 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %39 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 4
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %44 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 5
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %49 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 6
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %54 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 7
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i32, i32, i8*, i32, ...) @snprintf(i32 %27, i32 4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %37, i32 %42, i32 %47, i32 %52, i32 %57)
  %59 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %60 = load i32, i32* @GET_BL_VERSION, align 4
  %61 = call i32 @ims_pcu_execute_query(%struct.ims_pcu* %59, i32 %60)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %24
  %65 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %66 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %65, i32 0, i32 7
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @dev_err(i32 %67, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* %4, align 4
  store i32 %70, i32* %2, align 4
  br label %151

71:                                               ; preds = %24
  %72 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %73 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %76 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %81 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 3
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %86 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 4
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %91 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 5
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %96 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 6
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %101 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 7
  %104 = load i32, i32* %103, align 4
  %105 = call i32 (i32, i32, i8*, i32, ...) @snprintf(i32 %74, i32 4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %79, i32 %84, i32 %89, i32 %94, i32 %99, i32 %104)
  %106 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %107 = load i32, i32* @RESET_REASON, align 4
  %108 = call i32 @ims_pcu_execute_query(%struct.ims_pcu* %106, i32 %107)
  store i32 %108, i32* %4, align 4
  %109 = load i32, i32* %4, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %71
  %112 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %113 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %112, i32 0, i32 7
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %4, align 4
  %116 = call i32 @dev_err(i32 %114, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* %4, align 4
  store i32 %117, i32* %2, align 4
  br label %151

118:                                              ; preds = %71
  %119 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %120 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %123 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = load i64, i64* @IMS_PCU_DATA_OFFSET, align 8
  %126 = getelementptr inbounds i32, i32* %124, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = call i32 (i32, i32, i8*, i32, ...) @snprintf(i32 %121, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %127)
  %129 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %130 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %129, i32 0, i32 7
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %133 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %132, i32 0, i32 6
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %136 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %139 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %142 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %145 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %148 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @dev_dbg(i32 %131, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32 %134, i32 %137, i32 %140, i32 %143, i32 %146, i32 %149)
  store i32 0, i32* %2, align 4
  br label %151

151:                                              ; preds = %118, %111, %64, %17, %9
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

declare dso_local i32 @ims_pcu_get_info(%struct.ims_pcu*) #1

declare dso_local i32 @ims_pcu_execute_query(%struct.ims_pcu*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, ...) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
