; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dibx000_common.c_dibx000_read_word.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dibx000_common.c_dibx000_read_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dibx000_i2c_master = type { i32*, i32*, i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32*, i32, i64, i32 }

@.str = private unnamed_addr constant [24 x i8] c"could not acquire lock\0A\00", align 1
@I2C_M_RD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"i2c read error on %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dibx000_i2c_master*, i32)* @dibx000_read_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dibx000_read_word(%struct.dibx000_i2c_master* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dibx000_i2c_master*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dibx000_i2c_master* %0, %struct.dibx000_i2c_master** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %4, align 8
  %8 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %7, i32 0, i32 2
  %9 = call i64 @mutex_lock_interruptible(i32* %8)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %111

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = ashr i32 %14, 8
  %16 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %4, align 8
  %17 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 %15, i32* %19, align 4
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, 255
  %22 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %4, align 8
  %23 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  store i32 %21, i32* %25, align 4
  %26 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %4, align 8
  %27 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %26, i32 0, i32 3
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = call i32 @memset(%struct.TYPE_3__* %28, i32 0, i32 8)
  %30 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %4, align 8
  %31 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %4, align 8
  %34 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %33, i32 0, i32 3
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 3
  store i32 %32, i32* %37, align 8
  %38 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %4, align 8
  %39 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %38, i32 0, i32 3
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  store i64 0, i64* %42, align 8
  %43 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %4, align 8
  %44 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %4, align 8
  %47 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %46, i32 0, i32 3
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store i32* %45, i32** %50, align 8
  %51 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %4, align 8
  %52 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %51, i32 0, i32 3
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  store i32 2, i32* %55, align 8
  %56 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %4, align 8
  %57 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %4, align 8
  %60 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %59, i32 0, i32 3
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 1
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 3
  store i32 %58, i32* %63, align 8
  %64 = load i64, i64* @I2C_M_RD, align 8
  %65 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %4, align 8
  %66 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %65, i32 0, i32 3
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i64 1
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 2
  store i64 %64, i64* %69, align 8
  %70 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %4, align 8
  %71 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %4, align 8
  %74 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %73, i32 0, i32 3
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i64 1
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  store i32* %72, i32** %77, align 8
  %78 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %4, align 8
  %79 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %78, i32 0, i32 3
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i64 1
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  store i32 2, i32* %82, align 8
  %83 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %4, align 8
  %84 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %4, align 8
  %87 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %86, i32 0, i32 3
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = call i32 @i2c_transfer(i32 %85, %struct.TYPE_3__* %88, i32 2)
  %90 = icmp ne i32 %89, 2
  br i1 %90, label %91, label %94

91:                                               ; preds = %13
  %92 = load i32, i32* %5, align 4
  %93 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %91, %13
  %95 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %4, align 8
  %96 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = shl i32 %99, 8
  %101 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %4, align 8
  %102 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %100, %105
  store i32 %106, i32* %6, align 4
  %107 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %4, align 8
  %108 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %107, i32 0, i32 2
  %109 = call i32 @mutex_unlock(i32* %108)
  %110 = load i32, i32* %6, align 4
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %94, %11
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @i2c_transfer(i32, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
