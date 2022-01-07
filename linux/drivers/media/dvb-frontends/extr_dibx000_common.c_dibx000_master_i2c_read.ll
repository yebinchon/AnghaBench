; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dibx000_common.c_dibx000_master_i2c_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dibx000_common.c_dibx000_master_i2c_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dibx000_i2c_master = type { i64 }
%struct.i2c_msg = type { i32*, i32, i64 }

@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dibx000_i2c_master*, %struct.i2c_msg*)* @dibx000_master_i2c_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dibx000_master_i2c_read(%struct.dibx000_i2c_master* %0, %struct.i2c_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dibx000_i2c_master*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dibx000_i2c_master* %0, %struct.dibx000_i2c_master** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  %10 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %11 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %7, align 8
  %13 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %14 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %8, align 4
  br label %16

16:                                               ; preds = %99, %2
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %100

19:                                               ; preds = %16
  %20 = load i32, i32* %8, align 4
  %21 = icmp sgt i32 %20, 8
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  br label %25

23:                                               ; preds = %19
  %24 = load i32, i32* %8, align 4
  br label %25

25:                                               ; preds = %23, %22
  %26 = phi i32 [ 8, %22 ], [ %24, %23 ]
  store i32 %26, i32* %9, align 4
  %27 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %28 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = shl i32 %30, 9
  %32 = or i32 %31, 256
  %33 = or i32 %32, 128
  %34 = load i32, i32* %9, align 4
  %35 = and i32 %34, 7
  %36 = shl i32 %35, 2
  %37 = or i32 %33, %36
  %38 = or i32 %37, 2
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %41 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %39, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %25
  %45 = load i32, i32* %6, align 4
  %46 = or i32 %45, 32
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %44, %25
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %9, align 4
  %50 = sub nsw i32 %48, %49
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i32, i32* %6, align 4
  %54 = or i32 %53, 64
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %52, %47
  %56 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %4, align 8
  %57 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %4, align 8
  %58 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, 1
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @dibx000_write_word(%struct.dibx000_i2c_master* %56, i64 %60, i32 %61)
  %63 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %4, align 8
  %64 = call i64 @dibx000_is_i2c_done(%struct.dibx000_i2c_master* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %55
  %67 = load i32, i32* @EREMOTEIO, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %101

69:                                               ; preds = %55
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %8, align 4
  %72 = sub nsw i32 %71, %70
  store i32 %72, i32* %8, align 4
  br label %73

73:                                               ; preds = %98, %69
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %99

76:                                               ; preds = %73
  %77 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %4, align 8
  %78 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %4, align 8
  %79 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @dibx000_read_word(%struct.dibx000_i2c_master* %77, i64 %80)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = ashr i32 %82, 8
  %84 = and i32 %83, 255
  %85 = load i32*, i32** %7, align 8
  %86 = getelementptr inbounds i32, i32* %85, i32 1
  store i32* %86, i32** %7, align 8
  store i32 %84, i32* %85, align 4
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp sge i32 %89, 1
  br i1 %90, label %91, label %98

91:                                               ; preds = %76
  %92 = load i32, i32* %6, align 4
  %93 = and i32 %92, 255
  %94 = load i32*, i32** %7, align 8
  %95 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %95, i32** %7, align 8
  store i32 %93, i32* %94, align 4
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %9, align 4
  br label %98

98:                                               ; preds = %91, %76
  br label %73

99:                                               ; preds = %73
  br label %16

100:                                              ; preds = %16
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %100, %66
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @dibx000_write_word(%struct.dibx000_i2c_master*, i64, i32) #1

declare dso_local i64 @dibx000_is_i2c_done(%struct.dibx000_i2c_master*) #1

declare dso_local i32 @dibx000_read_word(%struct.dibx000_i2c_master*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
