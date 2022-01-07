; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ektf2127.c_ektf2127_query_dimension.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ektf2127.c_ektf2127_query_dimension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@EKTF2127_WIDTH = common dso_local global i32 0, align 4
@EKTF2127_HEIGHT = common dso_local global i32 0, align 4
@EKTF2127_REQUEST = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Failed to request %s: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Failed to receive %s data: %d\0A\00", align 1
@EKTF2127_RESPONSE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"Unexpected %s data: %#02x %#02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32)* @ektf2127_query_dimension to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ektf2127_query_dimension(%struct.i2c_client* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [4 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %6, align 8
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)
  store i8* %17, i8** %7, align 8
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @EKTF2127_WIDTH, align 4
  br label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @EKTF2127_HEIGHT, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* @EKTF2127_REQUEST, align 4
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  store i32 %26, i32* %27, align 16
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @EKTF2127_WIDTH, align 4
  br label %34

32:                                               ; preds = %24
  %33 = load i32, i32* @EKTF2127_HEIGHT, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  %36 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  store i32 %35, i32* %36, align 4
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  store i32 0, i32* %37, align 8
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  store i32 0, i32* %38, align 4
  %39 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %40 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %41 = call i32 @i2c_master_send(%struct.i2c_client* %39, i32* %40, i32 16)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = icmp ne i64 %43, 16
  br i1 %44, label %45, label %60

45:                                               ; preds = %34
  %46 = load i32, i32* %10, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32, i32* %10, align 4
  br label %53

50:                                               ; preds = %45
  %51 = load i32, i32* @EIO, align 4
  %52 = sub nsw i32 0, %51
  br label %53

53:                                               ; preds = %50, %48
  %54 = phi i32 [ %49, %48 ], [ %52, %50 ]
  store i32 %54, i32* %11, align 4
  %55 = load %struct.device*, %struct.device** %6, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = load i32, i32* %11, align 4
  %58 = call i32 (%struct.device*, i8*, i8*, i32, ...) @dev_err(%struct.device* %55, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %56, i32 %57)
  %59 = load i32, i32* %11, align 4
  store i32 %59, i32* %3, align 4
  br label %112

60:                                               ; preds = %34
  %61 = call i32 @msleep(i32 20)
  %62 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %63 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %64 = call i32 @i2c_master_recv(%struct.i2c_client* %62, i32* %63, i32 16)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = icmp ne i64 %66, 16
  br i1 %67, label %68, label %83

68:                                               ; preds = %60
  %69 = load i32, i32* %10, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load i32, i32* %10, align 4
  br label %76

73:                                               ; preds = %68
  %74 = load i32, i32* @EIO, align 4
  %75 = sub nsw i32 0, %74
  br label %76

76:                                               ; preds = %73, %71
  %77 = phi i32 [ %72, %71 ], [ %75, %73 ]
  store i32 %77, i32* %11, align 4
  %78 = load %struct.device*, %struct.device** %6, align 8
  %79 = load i8*, i8** %7, align 8
  %80 = load i32, i32* %11, align 4
  %81 = call i32 (%struct.device*, i8*, i8*, i32, ...) @dev_err(%struct.device* %78, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %79, i32 %80)
  %82 = load i32, i32* %11, align 4
  store i32 %82, i32* %3, align 4
  br label %112

83:                                               ; preds = %60
  %84 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %85 = load i32, i32* %84, align 16
  %86 = load i32, i32* @EKTF2127_RESPONSE, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %93, label %88

88:                                               ; preds = %83
  %89 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %103

93:                                               ; preds = %88, %83
  %94 = load %struct.device*, %struct.device** %6, align 8
  %95 = load i8*, i8** %7, align 8
  %96 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %97 = load i32, i32* %96, align 16
  %98 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (%struct.device*, i8*, i8*, i32, ...) @dev_err(%struct.device* %94, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* %95, i32 %97, i32 %99)
  %101 = load i32, i32* @EIO, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %3, align 4
  br label %112

103:                                              ; preds = %88
  %104 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  %105 = load i32, i32* %104, align 4
  %106 = and i32 %105, 240
  %107 = shl i32 %106, 4
  %108 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %107, %109
  %111 = sub nsw i32 %110, 1
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %103, %93, %76, %53
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i32*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i8*, i32, ...) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @i2c_master_recv(%struct.i2c_client*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
