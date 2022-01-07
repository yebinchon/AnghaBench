; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_af9013.c_af9013_regmap_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_af9013.c_af9013_regmap_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.af9013_state = type { i64 }

@AF9013_TS_MODE_USB = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64, i8*, i64)* @af9013_regmap_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9013_regmap_read(i8* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.i2c_client*, align 8
  %13 = alloca %struct.af9013_state*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = bitcast i8* %21 to %struct.i2c_client*
  store %struct.i2c_client* %22, %struct.i2c_client** %12, align 8
  %23 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %24 = call %struct.af9013_state* @i2c_get_clientdata(%struct.i2c_client* %23)
  store %struct.af9013_state* %24, %struct.af9013_state** %13, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = bitcast i8* %25 to i32*
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %17, align 4
  %32 = load i8*, i8** %8, align 8
  %33 = bitcast i8* %32 to i32*
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = shl i32 %35, 8
  %37 = load i8*, i8** %8, align 8
  %38 = bitcast i8* %37 to i32*
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %40, 0
  %42 = or i32 %36, %41
  store i32 %42, i32* %18, align 4
  %43 = load i8*, i8** %10, align 8
  %44 = bitcast i8* %43 to i32*
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  store i32* %45, i32** %19, align 8
  %46 = load i64, i64* %11, align 8
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %20, align 4
  %48 = load %struct.af9013_state*, %struct.af9013_state** %13, align 8
  %49 = getelementptr inbounds %struct.af9013_state, %struct.af9013_state* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @AF9013_TS_MODE_USB, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %75

53:                                               ; preds = %5
  %54 = load i32, i32* %18, align 4
  %55 = and i32 %54, 65280
  %56 = icmp ne i32 %55, 44544
  br i1 %56, label %57, label %75

57:                                               ; preds = %53
  %58 = load i32, i32* %20, align 4
  %59 = sub i32 %58, 1
  %60 = shl i32 %59, 2
  %61 = or i32 0, %60
  %62 = or i32 %61, 2
  store i32 %62, i32* %16, align 4
  %63 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %64 = load i32, i32* %16, align 4
  %65 = load i32, i32* %18, align 4
  %66 = load i8*, i8** %10, align 8
  %67 = bitcast i8* %66 to i32*
  %68 = load i32, i32* %20, align 4
  %69 = load i32, i32* %17, align 4
  %70 = call i32 @af9013_rregs(%struct.i2c_client* %63, i32 %64, i32 %65, i32* %67, i32 %68, i32 %69)
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %14, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %57
  br label %101

74:                                               ; preds = %57
  br label %100

75:                                               ; preds = %53, %5
  store i32 2, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %76

76:                                               ; preds = %96, %75
  %77 = load i32, i32* %15, align 4
  %78 = load i32, i32* %20, align 4
  %79 = icmp ult i32 %77, %78
  br i1 %79, label %80, label %99

80:                                               ; preds = %76
  %81 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* %18, align 4
  %84 = load i32, i32* %15, align 4
  %85 = add nsw i32 %83, %84
  %86 = load i32*, i32** %19, align 8
  %87 = load i32, i32* %15, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %17, align 4
  %91 = call i32 @af9013_rregs(%struct.i2c_client* %81, i32 %82, i32 %85, i32* %89, i32 1, i32 %90)
  store i32 %91, i32* %14, align 4
  %92 = load i32, i32* %14, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %80
  br label %101

95:                                               ; preds = %80
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %15, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %15, align 4
  br label %76

99:                                               ; preds = %76
  br label %100

100:                                              ; preds = %99, %74
  store i32 0, i32* %6, align 4
  br label %107

101:                                              ; preds = %94, %73
  %102 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %103 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %102, i32 0, i32 0
  %104 = load i32, i32* %14, align 4
  %105 = call i32 @dev_dbg(i32* %103, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %104)
  %106 = load i32, i32* %14, align 4
  store i32 %106, i32* %6, align 4
  br label %107

107:                                              ; preds = %101, %100
  %108 = load i32, i32* %6, align 4
  ret i32 %108
}

declare dso_local %struct.af9013_state* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @af9013_rregs(%struct.i2c_client*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
