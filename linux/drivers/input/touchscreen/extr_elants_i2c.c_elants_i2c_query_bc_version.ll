; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_elants_i2c.c_elants_i2c_query_bc_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_elants_i2c.c_elants_i2c_query_bc_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elants_data = type { i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@CMD_HEADER_READ = common dso_local global i32 0, align 4
@E_ELAN_INFO_BC_VER = common dso_local global i32 0, align 4
@HEADER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"read BC version error=%d, buf=%*phC\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elants_data*)* @elants_i2c_query_bc_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elants_i2c_query_bc_version(%struct.elants_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.elants_data*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca [4 x i32], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.elants_data* %0, %struct.elants_data** %3, align 8
  %11 = load %struct.elants_data*, %struct.elants_data** %3, align 8
  %12 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %11, i32 0, i32 2
  %13 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  store %struct.i2c_client* %13, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %15 = load i32, i32* @CMD_HEADER_READ, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds i32, i32* %14, i64 1
  %17 = load i32, i32* @E_ELAN_INFO_BC_VER, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds i32, i32* %16, i64 1
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  store i32 1, i32* %19, align 4
  %20 = load i32, i32* @HEADER_SIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %6, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %7, align 8
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %26 = mul nuw i64 4, %21
  %27 = trunc i64 %26 to i32
  %28 = call i32 @elants_i2c_execute_command(%struct.i2c_client* %24, i32* %25, i32 16, i32* %23, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %1
  %32 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %33 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %32, i32 0, i32 0
  %34 = load i32, i32* %9, align 4
  %35 = mul nuw i64 4, %21
  %36 = trunc i64 %35 to i32
  %37 = call i32 @dev_err(i32* %33, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %36, i32* %23)
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %49

39:                                               ; preds = %1
  %40 = call i32 @elants_i2c_parse_version(i32* %23)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = ashr i32 %41, 8
  %43 = load %struct.elants_data*, %struct.elants_data** %3, align 8
  %44 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* %8, align 4
  %46 = and i32 %45, 255
  %47 = load %struct.elants_data*, %struct.elants_data** %3, align 8
  %48 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %49

49:                                               ; preds = %39, %31
  %50 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %50)
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @elants_i2c_execute_command(%struct.i2c_client*, i32*, i32, i32*, i32) #2

declare dso_local i32 @dev_err(i32*, i8*, i32, i32, i32*) #2

declare dso_local i32 @elants_i2c_parse_version(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
