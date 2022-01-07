; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-s3c2410.c_s3c24xx_i2c_clockrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-s3c2410.c_s3c24xx_i2c_clockrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c24xx_i2c = type { i64, i32, i64, i32, i32, %struct.s3c2410_platform_i2c* }
%struct.s3c2410_platform_i2c = type { i64, i32 }

@.str = private unnamed_addr constant [29 x i8] c"pdata desired frequency %lu\0A\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"Unable to achieve desired frequency %luKHz. Lowest achievable %dKHz\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@S3C2410_IICCON = common dso_local global i64 0, align 8
@S3C2410_IICCON_SCALEMASK = common dso_local global i32 0, align 4
@S3C2410_IICCON_TXDIV_512 = common dso_local global i32 0, align 4
@QUIRK_POLL = common dso_local global i32 0, align 4
@QUIRK_S3C2440 = common dso_local global i32 0, align 4
@S3C2410_IICLC_FILTER_ON = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"IICLC=%08lx\0A\00", align 1
@S3C2440_IICLC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s3c24xx_i2c*, i32*)* @s3c24xx_i2c_clockrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c24xx_i2c_clockrate(%struct.s3c24xx_i2c* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.s3c24xx_i2c*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.s3c2410_platform_i2c*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.s3c24xx_i2c* %0, %struct.s3c24xx_i2c** %4, align 8
  store i32* %1, i32** %5, align 8
  %14 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %15 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %14, i32 0, i32 5
  %16 = load %struct.s3c2410_platform_i2c*, %struct.s3c2410_platform_i2c** %15, align 8
  store %struct.s3c2410_platform_i2c* %16, %struct.s3c2410_platform_i2c** %6, align 8
  %17 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %18 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @clk_get_rate(i32 %19)
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %23 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load i64, i64* %7, align 8
  %25 = udiv i64 %24, 1000
  store i64 %25, i64* %7, align 8
  %26 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %27 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.s3c2410_platform_i2c*, %struct.s3c2410_platform_i2c** %6, align 8
  %30 = getelementptr inbounds %struct.s3c2410_platform_i2c, %struct.s3c2410_platform_i2c* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @dev_dbg(i32 %28, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %31)
  %33 = load %struct.s3c2410_platform_i2c*, %struct.s3c2410_platform_i2c** %6, align 8
  %34 = getelementptr inbounds %struct.s3c2410_platform_i2c, %struct.s3c2410_platform_i2c* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %2
  %38 = load %struct.s3c2410_platform_i2c*, %struct.s3c2410_platform_i2c** %6, align 8
  %39 = getelementptr inbounds %struct.s3c2410_platform_i2c, %struct.s3c2410_platform_i2c* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  br label %42

41:                                               ; preds = %2
  br label %42

42:                                               ; preds = %41, %37
  %43 = phi i64 [ %40, %37 ], [ 100000, %41 ]
  store i64 %43, i64* %10, align 8
  %44 = load i64, i64* %10, align 8
  %45 = udiv i64 %44, 1000
  store i64 %45, i64* %10, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* %10, align 8
  %48 = call i32 @s3c24xx_i2c_calcdivisor(i64 %46, i64 %47, i32* %9, i32* %8)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = load i64, i64* %10, align 8
  %52 = icmp ugt i64 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %42
  %54 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %55 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = load i64, i64* %10, align 8
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @dev_err(i32 %56, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i64 %57, i32 %58)
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %151

62:                                               ; preds = %42
  %63 = load i32, i32* %12, align 4
  %64 = load i32*, i32** %5, align 8
  store i32 %63, i32* %64, align 4
  %65 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %66 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @S3C2410_IICCON, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @readl(i64 %69)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* @S3C2410_IICCON_SCALEMASK, align 4
  %72 = load i32, i32* @S3C2410_IICCON_TXDIV_512, align 4
  %73 = or i32 %71, %72
  %74 = xor i32 %73, -1
  %75 = load i32, i32* %11, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %8, align 4
  %78 = sub i32 %77, 1
  %79 = load i32, i32* %11, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp eq i32 %81, 512
  br i1 %82, label %83, label %87

83:                                               ; preds = %62
  %84 = load i32, i32* @S3C2410_IICCON_TXDIV_512, align 4
  %85 = load i32, i32* %11, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %11, align 4
  br label %87

87:                                               ; preds = %83, %62
  %88 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %89 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @QUIRK_POLL, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %87
  %95 = call i32 @S3C2410_IICCON_SCALE(i32 2)
  %96 = load i32, i32* %11, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %11, align 4
  br label %98

98:                                               ; preds = %94, %87
  %99 = load i32, i32* %11, align 4
  %100 = zext i32 %99 to i64
  %101 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %102 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @S3C2410_IICCON, align 8
  %105 = add nsw i64 %103, %104
  %106 = call i32 @writel(i64 %100, i64 %105)
  %107 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %108 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @QUIRK_S3C2440, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %150

113:                                              ; preds = %98
  %114 = load %struct.s3c2410_platform_i2c*, %struct.s3c2410_platform_i2c** %6, align 8
  %115 = getelementptr inbounds %struct.s3c2410_platform_i2c, %struct.s3c2410_platform_i2c* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %136

118:                                              ; preds = %113
  %119 = load i64, i64* %7, align 8
  %120 = load %struct.s3c2410_platform_i2c*, %struct.s3c2410_platform_i2c** %6, align 8
  %121 = getelementptr inbounds %struct.s3c2410_platform_i2c, %struct.s3c2410_platform_i2c* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = sext i32 %122 to i64
  %124 = mul i64 %119, %123
  store i64 %124, i64* %13, align 8
  %125 = load i64, i64* %13, align 8
  %126 = call i64 @DIV_ROUND_UP(i64 %125, i32 1000000)
  store i64 %126, i64* %13, align 8
  %127 = load i64, i64* %13, align 8
  %128 = call i64 @DIV_ROUND_UP(i64 %127, i32 5)
  store i64 %128, i64* %13, align 8
  %129 = load i64, i64* %13, align 8
  %130 = icmp ugt i64 %129, 3
  br i1 %130, label %131, label %132

131:                                              ; preds = %118
  store i64 3, i64* %13, align 8
  br label %132

132:                                              ; preds = %131, %118
  %133 = load i64, i64* @S3C2410_IICLC_FILTER_ON, align 8
  %134 = load i64, i64* %13, align 8
  %135 = or i64 %134, %133
  store i64 %135, i64* %13, align 8
  br label %137

136:                                              ; preds = %113
  store i64 0, i64* %13, align 8
  br label %137

137:                                              ; preds = %136, %132
  %138 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %139 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = load i64, i64* %13, align 8
  %142 = call i32 @dev_dbg(i32 %140, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i64 %141)
  %143 = load i64, i64* %13, align 8
  %144 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %145 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @S3C2440_IICLC, align 8
  %148 = add nsw i64 %146, %147
  %149 = call i32 @writel(i64 %143, i64 %148)
  br label %150

150:                                              ; preds = %137, %98
  store i32 0, i32* %3, align 4
  br label %151

151:                                              ; preds = %150, %53
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64) #1

declare dso_local i32 @s3c24xx_i2c_calcdivisor(i64, i64, i32*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i64, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @S3C2410_IICCON_SCALE(i32) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i64 @DIV_ROUND_UP(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
