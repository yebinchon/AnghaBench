; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dibx000_common.c_dibx000_write_word.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dibx000_common.c_dibx000_write_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dibx000_i2c_master = type { i32*, i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32*, i32, i64, i32 }

@.str = private unnamed_addr constant [24 x i8] c"could not acquire lock\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dibx000_i2c_master*, i32, i32)* @dibx000_write_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dibx000_write_word(%struct.dibx000_i2c_master* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dibx000_i2c_master*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dibx000_i2c_master* %0, %struct.dibx000_i2c_master** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %5, align 8
  %10 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %9, i32 0, i32 1
  %11 = call i64 @mutex_lock_interruptible(i32* %10)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = call i32 @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %92

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = ashr i32 %18, 8
  %20 = and i32 %19, 255
  %21 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %5, align 8
  %22 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 %20, i32* %24, align 4
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %25, 255
  %27 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %5, align 8
  %28 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  store i32 %26, i32* %30, align 4
  %31 = load i32, i32* %7, align 4
  %32 = ashr i32 %31, 8
  %33 = and i32 %32, 255
  %34 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %5, align 8
  %35 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 2
  store i32 %33, i32* %37, align 4
  %38 = load i32, i32* %7, align 4
  %39 = and i32 %38, 255
  %40 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %5, align 8
  %41 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 3
  store i32 %39, i32* %43, align 4
  %44 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %5, align 8
  %45 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %44, i32 0, i32 2
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = call i32 @memset(%struct.TYPE_3__* %46, i32 0, i32 4)
  %48 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %5, align 8
  %49 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %5, align 8
  %52 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %51, i32 0, i32 2
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 3
  store i32 %50, i32* %55, align 8
  %56 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %5, align 8
  %57 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %56, i32 0, i32 2
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  store i64 0, i64* %60, align 8
  %61 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %5, align 8
  %62 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %5, align 8
  %65 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %64, i32 0, i32 2
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i64 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  store i32* %63, i32** %68, align 8
  %69 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %5, align 8
  %70 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %69, i32 0, i32 2
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i64 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  store i32 4, i32* %73, align 8
  %74 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %5, align 8
  %75 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %5, align 8
  %78 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %77, i32 0, i32 2
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = call i32 @i2c_transfer(i32 %76, %struct.TYPE_3__* %79, i32 1)
  %81 = icmp ne i32 %80, 1
  br i1 %81, label %82, label %85

82:                                               ; preds = %17
  %83 = load i32, i32* @EREMOTEIO, align 4
  %84 = sub nsw i32 0, %83
  br label %86

85:                                               ; preds = %17
  br label %86

86:                                               ; preds = %85, %82
  %87 = phi i32 [ %84, %82 ], [ 0, %85 ]
  store i32 %87, i32* %8, align 4
  %88 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %5, align 8
  %89 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %88, i32 0, i32 1
  %90 = call i32 @mutex_unlock(i32* %89)
  %91 = load i32, i32* %8, align 4
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %86, %13
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @i2c_transfer(i32, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
