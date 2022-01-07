; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/adv7511/extr_adv7511_drv.c_adv7511_get_edid_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/adv7511/extr_adv7511_drv.c_adv7511_get_edid_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adv7511 = type { i32, i32, i64*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.i2c_msg = type { i32, i64*, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ADV7511_REG_DDC_STATUS = common dso_local global i32 0, align 4
@ADV7511_REG_EDID_SEGMENT = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32, i64)* @adv7511_get_edid_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv7511_get_edid_block(i8* %0, i32* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.adv7511*, align 8
  %11 = alloca [2 x %struct.i2c_msg], align 16
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.adv7511*
  store %struct.adv7511* %17, %struct.adv7511** %10, align 8
  %18 = load i64, i64* %9, align 8
  %19 = icmp ugt i64 %18, 128
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %149

23:                                               ; preds = %4
  %24 = load %struct.adv7511*, %struct.adv7511** %10, align 8
  %25 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = udiv i32 %27, 2
  %29 = icmp ne i32 %26, %28
  br i1 %29, label %30, label %129

30:                                               ; preds = %23
  %31 = load %struct.adv7511*, %struct.adv7511** %10, align 8
  %32 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @ADV7511_REG_DDC_STATUS, align 4
  %35 = call i32 @regmap_read(i32 %33, i32 %34, i32* %15)
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %14, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* %14, align 4
  store i32 %39, i32* %5, align 4
  br label %149

40:                                               ; preds = %30
  %41 = load i32, i32* %15, align 4
  %42 = icmp ne i32 %41, 2
  br i1 %42, label %43, label %59

43:                                               ; preds = %40
  %44 = load %struct.adv7511*, %struct.adv7511** %10, align 8
  %45 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %44, i32 0, i32 1
  store i32 0, i32* %45, align 4
  %46 = load %struct.adv7511*, %struct.adv7511** %10, align 8
  %47 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @ADV7511_REG_EDID_SEGMENT, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @regmap_write(i32 %48, i32 %49, i32 %50)
  %52 = load %struct.adv7511*, %struct.adv7511** %10, align 8
  %53 = call i32 @adv7511_wait_for_edid(%struct.adv7511* %52, i32 200)
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %14, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %43
  %57 = load i32, i32* %14, align 4
  store i32 %57, i32* %5, align 4
  br label %149

58:                                               ; preds = %43
  br label %59

59:                                               ; preds = %58, %40
  %60 = load %struct.adv7511*, %struct.adv7511** %10, align 8
  %61 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %60, i32 0, i32 3
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 0
  %66 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 8
  %67 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 0
  %68 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %67, i32 0, i32 2
  store i64 0, i64* %68, align 16
  %69 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 0
  %70 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %69, i32 0, i32 0
  store i32 1, i32* %70, align 16
  %71 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 0
  %72 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %71, i32 0, i32 1
  store i64* %12, i64** %72, align 8
  %73 = load %struct.adv7511*, %struct.adv7511** %10, align 8
  %74 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %73, i32 0, i32 3
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 1
  %79 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 8
  %80 = load i64, i64* @I2C_M_RD, align 8
  %81 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 1
  %82 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %81, i32 0, i32 2
  store i64 %80, i64* %82, align 16
  %83 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 1
  %84 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %83, i32 0, i32 0
  store i32 64, i32* %84, align 16
  %85 = load %struct.adv7511*, %struct.adv7511** %10, align 8
  %86 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %85, i32 0, i32 2
  %87 = load i64*, i64** %86, align 8
  %88 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 1
  %89 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %88, i32 0, i32 1
  store i64* %87, i64** %89, align 8
  store i64 0, i64* %12, align 8
  store i32 0, i32* %13, align 4
  br label %90

90:                                               ; preds = %121, %59
  %91 = load i32, i32* %13, align 4
  %92 = icmp ult i32 %91, 4
  br i1 %92, label %93, label %124

93:                                               ; preds = %90
  %94 = load %struct.adv7511*, %struct.adv7511** %10, align 8
  %95 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %94, i32 0, i32 3
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 0
  %100 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 0
  %101 = call i32 @ARRAY_SIZE(%struct.i2c_msg* %100)
  %102 = call i32 @i2c_transfer(i32 %98, %struct.i2c_msg* %99, i32 %101)
  store i32 %102, i32* %14, align 4
  %103 = load i32, i32* %14, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %93
  %106 = load i32, i32* %14, align 4
  store i32 %106, i32* %5, align 4
  br label %149

107:                                              ; preds = %93
  %108 = load i32, i32* %14, align 4
  %109 = icmp ne i32 %108, 2
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load i32, i32* @EIO, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %5, align 4
  br label %149

113:                                              ; preds = %107
  br label %114

114:                                              ; preds = %113
  %115 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 1
  %116 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %115, i32 0, i32 1
  %117 = load i64*, i64** %116, align 8
  %118 = getelementptr inbounds i64, i64* %117, i64 64
  store i64* %118, i64** %116, align 8
  %119 = load i64, i64* %12, align 8
  %120 = add nsw i64 %119, 64
  store i64 %120, i64* %12, align 8
  br label %121

121:                                              ; preds = %114
  %122 = load i32, i32* %13, align 4
  %123 = add i32 %122, 1
  store i32 %123, i32* %13, align 4
  br label %90

124:                                              ; preds = %90
  %125 = load i32, i32* %8, align 4
  %126 = udiv i32 %125, 2
  %127 = load %struct.adv7511*, %struct.adv7511** %10, align 8
  %128 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 8
  br label %129

129:                                              ; preds = %124, %23
  %130 = load i32, i32* %8, align 4
  %131 = urem i32 %130, 2
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %129
  %134 = load i32*, i32** %7, align 8
  %135 = load %struct.adv7511*, %struct.adv7511** %10, align 8
  %136 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %135, i32 0, i32 2
  %137 = load i64*, i64** %136, align 8
  %138 = load i64, i64* %9, align 8
  %139 = call i32 @memcpy(i32* %134, i64* %137, i64 %138)
  br label %148

140:                                              ; preds = %129
  %141 = load i32*, i32** %7, align 8
  %142 = load %struct.adv7511*, %struct.adv7511** %10, align 8
  %143 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %142, i32 0, i32 2
  %144 = load i64*, i64** %143, align 8
  %145 = getelementptr inbounds i64, i64* %144, i64 128
  %146 = load i64, i64* %9, align 8
  %147 = call i32 @memcpy(i32* %141, i64* %145, i64 %146)
  br label %148

148:                                              ; preds = %140, %133
  store i32 0, i32* %5, align 4
  br label %149

149:                                              ; preds = %148, %110, %105, %56, %38, %20
  %150 = load i32, i32* %5, align 4
  ret i32 %150
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @adv7511_wait_for_edid(%struct.adv7511*, i32) #1

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.i2c_msg*) #1

declare dso_local i32 @memcpy(i32*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
