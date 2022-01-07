; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-octeon-core.c_octeon_i2c_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-octeon-core.c_octeon_i2c_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_i2c = type { i32 }

@TWSI_CTL_ENAB = common dso_local global i32 0, align 4
@TWSI_CTL_AAK = common dso_local global i32 0, align 4
@I2C_SMBUS_BLOCK_MAX = common dso_local global i64 0, align 8
@EPROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.octeon_i2c*, i32, i64*, i32*, i32)* @octeon_i2c_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octeon_i2c_read(%struct.octeon_i2c* %0, i32 %1, i64* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.octeon_i2c*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.octeon_i2c* %0, %struct.octeon_i2c** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64* %2, i64** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i32*, i32** %10, align 8
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %18 = load %struct.octeon_i2c*, %struct.octeon_i2c** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = shl i32 %19, 1
  %21 = or i32 %20, 1
  %22 = call i32 @octeon_i2c_data_write(%struct.octeon_i2c* %18, i32 %21)
  %23 = load %struct.octeon_i2c*, %struct.octeon_i2c** %7, align 8
  %24 = load i32, i32* @TWSI_CTL_ENAB, align 4
  %25 = call i32 @octeon_i2c_ctl_write(%struct.octeon_i2c* %23, i32 %24)
  %26 = load %struct.octeon_i2c*, %struct.octeon_i2c** %7, align 8
  %27 = call i32 @octeon_i2c_wait(%struct.octeon_i2c* %26)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %5
  %31 = load i32, i32* %13, align 4
  store i32 %31, i32* %6, align 4
  br label %130

32:                                               ; preds = %5
  %33 = load %struct.octeon_i2c*, %struct.octeon_i2c** %7, align 8
  %34 = call i32 @octeon_i2c_check_status(%struct.octeon_i2c* %33, i32 0)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %13, align 4
  store i32 %38, i32* %6, align 4
  br label %130

39:                                               ; preds = %32
  store i32 0, i32* %12, align 4
  br label %40

40:                                               ; preds = %124, %39
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %14, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %127

44:                                               ; preds = %40
  %45 = load i32, i32* %12, align 4
  %46 = add nsw i32 %45, 1
  %47 = load i32, i32* %14, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* %12, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %52, %49
  store i32 1, i32* %15, align 4
  br label %56

56:                                               ; preds = %55, %52, %44
  %57 = load i32, i32* %15, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load %struct.octeon_i2c*, %struct.octeon_i2c** %7, align 8
  %61 = load i32, i32* @TWSI_CTL_ENAB, align 4
  %62 = call i32 @octeon_i2c_ctl_write(%struct.octeon_i2c* %60, i32 %61)
  br label %69

63:                                               ; preds = %56
  %64 = load %struct.octeon_i2c*, %struct.octeon_i2c** %7, align 8
  %65 = load i32, i32* @TWSI_CTL_ENAB, align 4
  %66 = load i32, i32* @TWSI_CTL_AAK, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @octeon_i2c_ctl_write(%struct.octeon_i2c* %64, i32 %67)
  br label %69

69:                                               ; preds = %63, %59
  %70 = load %struct.octeon_i2c*, %struct.octeon_i2c** %7, align 8
  %71 = call i32 @octeon_i2c_wait(%struct.octeon_i2c* %70)
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load i32, i32* %13, align 4
  store i32 %75, i32* %6, align 4
  br label %130

76:                                               ; preds = %69
  %77 = load %struct.octeon_i2c*, %struct.octeon_i2c** %7, align 8
  %78 = call i64 @octeon_i2c_data_read(%struct.octeon_i2c* %77, i32* %13)
  %79 = load i64*, i64** %9, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  store i64 %78, i64* %82, align 8
  %83 = load i32, i32* %13, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %76
  %86 = load i32, i32* %13, align 4
  store i32 %86, i32* %6, align 4
  br label %130

87:                                               ; preds = %76
  %88 = load i32, i32* %11, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %115

90:                                               ; preds = %87
  %91 = load i32, i32* %12, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %115

93:                                               ; preds = %90
  %94 = load i64*, i64** %9, align 8
  %95 = load i32, i32* %12, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %94, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @I2C_SMBUS_BLOCK_MAX, align 8
  %100 = add nsw i64 %99, 1
  %101 = icmp sgt i64 %98, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %93
  %103 = load i32, i32* @EPROTO, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %6, align 4
  br label %130

105:                                              ; preds = %93
  %106 = load i64*, i64** %9, align 8
  %107 = load i32, i32* %12, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i64, i64* %106, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = load i32, i32* %14, align 4
  %112 = sext i32 %111 to i64
  %113 = add nsw i64 %112, %110
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %14, align 4
  br label %115

115:                                              ; preds = %105, %90, %87
  %116 = load %struct.octeon_i2c*, %struct.octeon_i2c** %7, align 8
  %117 = load i32, i32* %15, align 4
  %118 = call i32 @octeon_i2c_check_status(%struct.octeon_i2c* %116, i32 %117)
  store i32 %118, i32* %13, align 4
  %119 = load i32, i32* %13, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %115
  %122 = load i32, i32* %13, align 4
  store i32 %122, i32* %6, align 4
  br label %130

123:                                              ; preds = %115
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %12, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %12, align 4
  br label %40

127:                                              ; preds = %40
  %128 = load i32, i32* %14, align 4
  %129 = load i32*, i32** %10, align 8
  store i32 %128, i32* %129, align 4
  store i32 0, i32* %6, align 4
  br label %130

130:                                              ; preds = %127, %121, %102, %85, %74, %37, %30
  %131 = load i32, i32* %6, align 4
  ret i32 %131
}

declare dso_local i32 @octeon_i2c_data_write(%struct.octeon_i2c*, i32) #1

declare dso_local i32 @octeon_i2c_ctl_write(%struct.octeon_i2c*, i32) #1

declare dso_local i32 @octeon_i2c_wait(%struct.octeon_i2c*) #1

declare dso_local i32 @octeon_i2c_check_status(%struct.octeon_i2c*, i32) #1

declare dso_local i64 @octeon_i2c_data_read(%struct.octeon_i2c*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
