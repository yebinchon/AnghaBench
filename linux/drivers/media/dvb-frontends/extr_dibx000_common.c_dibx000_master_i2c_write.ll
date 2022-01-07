; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dibx000_common.c_dibx000_master_i2c_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dibx000_common.c_dibx000_master_i2c_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dibx000_i2c_master = type { i64 }
%struct.i2c_msg = type { i32, i32*, i64 }

@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dibx000_i2c_master*, %struct.i2c_msg*, i32)* @dibx000_master_i2c_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dibx000_master_i2c_write(%struct.dibx000_i2c_master* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dibx000_i2c_master*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.dibx000_i2c_master* %0, %struct.dibx000_i2c_master** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %15 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %11, align 4
  %17 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %13, align 8
  br label %20

20:                                               ; preds = %111, %3
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %115

23:                                               ; preds = %20
  %24 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %5, align 8
  %25 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %5, align 8
  %26 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 2
  %29 = call i32 @dibx000_read_word(%struct.dibx000_i2c_master* %24, i64 %28)
  %30 = load i32, i32* %11, align 4
  %31 = icmp sgt i32 %30, 8
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %35

33:                                               ; preds = %23
  %34 = load i32, i32* %11, align 4
  br label %35

35:                                               ; preds = %33, %32
  %36 = phi i32 [ 8, %32 ], [ %34, %33 ]
  store i32 %36, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %37

37:                                               ; preds = %63, %35
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %66

41:                                               ; preds = %37
  %42 = load i32*, i32** %13, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** %13, align 8
  %44 = load i32, i32* %42, align 4
  %45 = shl i32 %44, 8
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %46, 1
  %48 = load i32, i32* %12, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %41
  %51 = load i32*, i32** %13, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %13, align 8
  %53 = load i32, i32* %51, align 4
  %54 = load i32, i32* %8, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %50, %41
  %57 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %5, align 8
  %58 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %5, align 8
  %59 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @dibx000_write_word(%struct.dibx000_i2c_master* %57, i64 %60, i32 %61)
  br label %63

63:                                               ; preds = %56
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, 2
  store i32 %65, i32* %10, align 4
  br label %37

66:                                               ; preds = %37
  %67 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %68 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  %71 = shl i32 %70, 9
  %72 = or i32 %71, 256
  %73 = or i32 %72, 128
  %74 = load i32, i32* %12, align 4
  %75 = and i32 %74, 7
  %76 = shl i32 %75, 2
  %77 = or i32 %73, %76
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %11, align 4
  %79 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %80 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp eq i32 %78, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %66
  %84 = load i32, i32* %9, align 4
  %85 = or i32 %84, 32
  store i32 %85, i32* %9, align 4
  br label %86

86:                                               ; preds = %83, %66
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %12, align 4
  %89 = sub nsw i32 %87, %88
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %86
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i32, i32* %9, align 4
  %96 = or i32 %95, 64
  store i32 %96, i32* %9, align 4
  br label %97

97:                                               ; preds = %94, %91, %86
  %98 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %5, align 8
  %99 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %5, align 8
  %100 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %101, 1
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @dibx000_write_word(%struct.dibx000_i2c_master* %98, i64 %102, i32 %103)
  %105 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %5, align 8
  %106 = call i64 @dibx000_is_i2c_done(%struct.dibx000_i2c_master* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %97
  %109 = load i32, i32* @EREMOTEIO, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %4, align 4
  br label %116

111:                                              ; preds = %97
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* %11, align 4
  %114 = sub nsw i32 %113, %112
  store i32 %114, i32* %11, align 4
  br label %20

115:                                              ; preds = %20
  store i32 0, i32* %4, align 4
  br label %116

116:                                              ; preds = %115, %108
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i32 @dibx000_read_word(%struct.dibx000_i2c_master*, i64) #1

declare dso_local i32 @dibx000_write_word(%struct.dibx000_i2c_master*, i64, i32) #1

declare dso_local i64 @dibx000_is_i2c_done(%struct.dibx000_i2c_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
