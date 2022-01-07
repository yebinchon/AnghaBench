; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_abituguru3.c_abituguru3_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_abituguru3.c_abituguru3_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.abituguru3_data = type { i64 }

@ABIT_UGURU3_DATA = common dso_local global i64 0, align 8
@ABIT_UGURU3_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"read from 0x%02x:0x%02x timed out after sending 0x1A, status: 0x%02x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ABIT_UGURU3_CMD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [74 x i8] c"read from 0x%02x:0x%02x timed out after sending the bank, status: 0x%02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [76 x i8] c"read from 0x%02x:0x%02x timed out after sending the offset, status: 0x%02x\0A\00", align 1
@.str.3 = private unnamed_addr constant [75 x i8] c"read from 0x%02x:0x%02x timed out after sending the count, status: 0x%02x\0A\00", align 1
@.str.4 = private unnamed_addr constant [60 x i8] c"timeout reading byte %d from 0x%02x:0x%02x, status: 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.abituguru3_data*, i32, i32, i32, i32*)* @abituguru3_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @abituguru3_read(%struct.abituguru3_data* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.abituguru3_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.abituguru3_data* %0, %struct.abituguru3_data** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %14 = load %struct.abituguru3_data*, %struct.abituguru3_data** %7, align 8
  %15 = call i32 @abituguru3_synchronize(%struct.abituguru3_data* %14)
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* %13, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load i32, i32* %13, align 4
  store i32 %19, i32* %6, align 4
  br label %132

20:                                               ; preds = %5
  %21 = load %struct.abituguru3_data*, %struct.abituguru3_data** %7, align 8
  %22 = getelementptr inbounds %struct.abituguru3_data, %struct.abituguru3_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ABIT_UGURU3_DATA, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @outb(i32 26, i64 %25)
  %27 = load %struct.abituguru3_data*, %struct.abituguru3_data** %7, align 8
  %28 = call i32 @abituguru3_wait_while_busy(%struct.abituguru3_data* %27)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* @ABIT_UGURU3_SUCCESS, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %20
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %13, align 4
  %36 = call i32 (i8*, i32, i32, i32, ...) @ABIT_UGURU3_DEBUG(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34, i32 %35)
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %132

39:                                               ; preds = %20
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.abituguru3_data*, %struct.abituguru3_data** %7, align 8
  %42 = getelementptr inbounds %struct.abituguru3_data, %struct.abituguru3_data* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @ABIT_UGURU3_CMD, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @outb(i32 %40, i64 %45)
  %47 = load %struct.abituguru3_data*, %struct.abituguru3_data** %7, align 8
  %48 = call i32 @abituguru3_wait_while_busy(%struct.abituguru3_data* %47)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* @ABIT_UGURU3_SUCCESS, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %39
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %13, align 4
  %56 = call i32 (i8*, i32, i32, i32, ...) @ABIT_UGURU3_DEBUG(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %54, i32 %55)
  %57 = load i32, i32* @EIO, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %6, align 4
  br label %132

59:                                               ; preds = %39
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.abituguru3_data*, %struct.abituguru3_data** %7, align 8
  %62 = getelementptr inbounds %struct.abituguru3_data, %struct.abituguru3_data* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @ABIT_UGURU3_CMD, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @outb(i32 %60, i64 %65)
  %67 = load %struct.abituguru3_data*, %struct.abituguru3_data** %7, align 8
  %68 = call i32 @abituguru3_wait_while_busy(%struct.abituguru3_data* %67)
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* @ABIT_UGURU3_SUCCESS, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %59
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %13, align 4
  %76 = call i32 (i8*, i32, i32, i32, ...) @ABIT_UGURU3_DEBUG(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.2, i64 0, i64 0), i32 %73, i32 %74, i32 %75)
  %77 = load i32, i32* @EIO, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %6, align 4
  br label %132

79:                                               ; preds = %59
  %80 = load i32, i32* %10, align 4
  %81 = load %struct.abituguru3_data*, %struct.abituguru3_data** %7, align 8
  %82 = getelementptr inbounds %struct.abituguru3_data, %struct.abituguru3_data* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @ABIT_UGURU3_CMD, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @outb(i32 %80, i64 %85)
  %87 = load %struct.abituguru3_data*, %struct.abituguru3_data** %7, align 8
  %88 = call i32 @abituguru3_wait_while_busy(%struct.abituguru3_data* %87)
  store i32 %88, i32* %13, align 4
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* @ABIT_UGURU3_SUCCESS, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %79
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* %13, align 4
  %96 = call i32 (i8*, i32, i32, i32, ...) @ABIT_UGURU3_DEBUG(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.3, i64 0, i64 0), i32 %93, i32 %94, i32 %95)
  %97 = load i32, i32* @EIO, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %6, align 4
  br label %132

99:                                               ; preds = %79
  store i32 0, i32* %12, align 4
  br label %100

100:                                              ; preds = %127, %99
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* %10, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %130

104:                                              ; preds = %100
  %105 = load %struct.abituguru3_data*, %struct.abituguru3_data** %7, align 8
  %106 = call i32 @abituguru3_wait_for_read(%struct.abituguru3_data* %105)
  store i32 %106, i32* %13, align 4
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* @ABIT_UGURU3_SUCCESS, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %116

110:                                              ; preds = %104
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* %13, align 4
  %115 = call i32 (i8*, i32, i32, i32, ...) @ABIT_UGURU3_DEBUG(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0), i32 %111, i32 %112, i32 %113, i32 %114)
  br label %130

116:                                              ; preds = %104
  %117 = load %struct.abituguru3_data*, %struct.abituguru3_data** %7, align 8
  %118 = getelementptr inbounds %struct.abituguru3_data, %struct.abituguru3_data* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @ABIT_UGURU3_CMD, align 8
  %121 = add nsw i64 %119, %120
  %122 = call i32 @inb(i64 %121)
  %123 = load i32*, i32** %11, align 8
  %124 = load i32, i32* %12, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  store i32 %122, i32* %126, align 4
  br label %127

127:                                              ; preds = %116
  %128 = load i32, i32* %12, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %12, align 4
  br label %100

130:                                              ; preds = %110, %100
  %131 = load i32, i32* %12, align 4
  store i32 %131, i32* %6, align 4
  br label %132

132:                                              ; preds = %130, %92, %72, %52, %32, %18
  %133 = load i32, i32* %6, align 4
  ret i32 %133
}

declare dso_local i32 @abituguru3_synchronize(%struct.abituguru3_data*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @abituguru3_wait_while_busy(%struct.abituguru3_data*) #1

declare dso_local i32 @ABIT_UGURU3_DEBUG(i8*, i32, i32, i32, ...) #1

declare dso_local i32 @abituguru3_wait_for_read(%struct.abituguru3_data*) #1

declare dso_local i32 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
