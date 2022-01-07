; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_edt-ft5x06.c_edt_ft5x06_ts_get_defaults.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_edt-ft5x06.c_edt_ft5x06_ts_get_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.edt_ft5x06_ts_data = type { i8*, i8*, i8*, i8*, i8*, %struct.edt_reg_addr }
%struct.edt_reg_addr = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"threshold\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"gain\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"offset-x\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"offset-y\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.edt_ft5x06_ts_data*)* @edt_ft5x06_ts_get_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @edt_ft5x06_ts_get_defaults(%struct.device* %0, %struct.edt_ft5x06_ts_data* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.edt_ft5x06_ts_data*, align 8
  %5 = alloca %struct.edt_reg_addr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.edt_ft5x06_ts_data* %1, %struct.edt_ft5x06_ts_data** %4, align 8
  %8 = load %struct.edt_ft5x06_ts_data*, %struct.edt_ft5x06_ts_data** %4, align 8
  %9 = getelementptr inbounds %struct.edt_ft5x06_ts_data, %struct.edt_ft5x06_ts_data* %8, i32 0, i32 5
  store %struct.edt_reg_addr* %9, %struct.edt_reg_addr** %5, align 8
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = call i32 @device_property_read_u32(%struct.device* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %6)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %2
  %15 = load %struct.edt_ft5x06_ts_data*, %struct.edt_ft5x06_ts_data** %4, align 8
  %16 = load %struct.edt_reg_addr*, %struct.edt_reg_addr** %5, align 8
  %17 = getelementptr inbounds %struct.edt_reg_addr, %struct.edt_reg_addr* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @edt_ft5x06_register_write(%struct.edt_ft5x06_ts_data* %15, i32 %18, i8* %19)
  %21 = load i8*, i8** %6, align 8
  %22 = load %struct.edt_ft5x06_ts_data*, %struct.edt_ft5x06_ts_data** %4, align 8
  %23 = getelementptr inbounds %struct.edt_ft5x06_ts_data, %struct.edt_ft5x06_ts_data* %22, i32 0, i32 4
  store i8* %21, i8** %23, align 8
  br label %24

24:                                               ; preds = %14, %2
  %25 = load %struct.device*, %struct.device** %3, align 8
  %26 = call i32 @device_property_read_u32(%struct.device* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %6)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %24
  %30 = load %struct.edt_ft5x06_ts_data*, %struct.edt_ft5x06_ts_data** %4, align 8
  %31 = load %struct.edt_reg_addr*, %struct.edt_reg_addr** %5, align 8
  %32 = getelementptr inbounds %struct.edt_reg_addr, %struct.edt_reg_addr* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @edt_ft5x06_register_write(%struct.edt_ft5x06_ts_data* %30, i32 %33, i8* %34)
  %36 = load i8*, i8** %6, align 8
  %37 = load %struct.edt_ft5x06_ts_data*, %struct.edt_ft5x06_ts_data** %4, align 8
  %38 = getelementptr inbounds %struct.edt_ft5x06_ts_data, %struct.edt_ft5x06_ts_data* %37, i32 0, i32 3
  store i8* %36, i8** %38, align 8
  br label %39

39:                                               ; preds = %29, %24
  %40 = load %struct.device*, %struct.device** %3, align 8
  %41 = call i32 @device_property_read_u32(%struct.device* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %6)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %39
  %45 = load %struct.edt_ft5x06_ts_data*, %struct.edt_ft5x06_ts_data** %4, align 8
  %46 = load %struct.edt_reg_addr*, %struct.edt_reg_addr** %5, align 8
  %47 = getelementptr inbounds %struct.edt_reg_addr, %struct.edt_reg_addr* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @edt_ft5x06_register_write(%struct.edt_ft5x06_ts_data* %45, i32 %48, i8* %49)
  %51 = load i8*, i8** %6, align 8
  %52 = load %struct.edt_ft5x06_ts_data*, %struct.edt_ft5x06_ts_data** %4, align 8
  %53 = getelementptr inbounds %struct.edt_ft5x06_ts_data, %struct.edt_ft5x06_ts_data* %52, i32 0, i32 2
  store i8* %51, i8** %53, align 8
  br label %54

54:                                               ; preds = %44, %39
  %55 = load %struct.device*, %struct.device** %3, align 8
  %56 = call i32 @device_property_read_u32(%struct.device* %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %6)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %69, label %59

59:                                               ; preds = %54
  %60 = load %struct.edt_ft5x06_ts_data*, %struct.edt_ft5x06_ts_data** %4, align 8
  %61 = load %struct.edt_reg_addr*, %struct.edt_reg_addr** %5, align 8
  %62 = getelementptr inbounds %struct.edt_reg_addr, %struct.edt_reg_addr* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i8*, i8** %6, align 8
  %65 = call i32 @edt_ft5x06_register_write(%struct.edt_ft5x06_ts_data* %60, i32 %63, i8* %64)
  %66 = load i8*, i8** %6, align 8
  %67 = load %struct.edt_ft5x06_ts_data*, %struct.edt_ft5x06_ts_data** %4, align 8
  %68 = getelementptr inbounds %struct.edt_ft5x06_ts_data, %struct.edt_ft5x06_ts_data* %67, i32 0, i32 1
  store i8* %66, i8** %68, align 8
  br label %69

69:                                               ; preds = %59, %54
  %70 = load %struct.device*, %struct.device** %3, align 8
  %71 = call i32 @device_property_read_u32(%struct.device* %70, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8** %6)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %84, label %74

74:                                               ; preds = %69
  %75 = load %struct.edt_ft5x06_ts_data*, %struct.edt_ft5x06_ts_data** %4, align 8
  %76 = load %struct.edt_reg_addr*, %struct.edt_reg_addr** %5, align 8
  %77 = getelementptr inbounds %struct.edt_reg_addr, %struct.edt_reg_addr* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i8*, i8** %6, align 8
  %80 = call i32 @edt_ft5x06_register_write(%struct.edt_ft5x06_ts_data* %75, i32 %78, i8* %79)
  %81 = load i8*, i8** %6, align 8
  %82 = load %struct.edt_ft5x06_ts_data*, %struct.edt_ft5x06_ts_data** %4, align 8
  %83 = getelementptr inbounds %struct.edt_ft5x06_ts_data, %struct.edt_ft5x06_ts_data* %82, i32 0, i32 0
  store i8* %81, i8** %83, align 8
  br label %84

84:                                               ; preds = %74, %69
  ret void
}

declare dso_local i32 @device_property_read_u32(%struct.device*, i8*, i8**) #1

declare dso_local i32 @edt_ft5x06_register_write(%struct.edt_ft5x06_ts_data*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
