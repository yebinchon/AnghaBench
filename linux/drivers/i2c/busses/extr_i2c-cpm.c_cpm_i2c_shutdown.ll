; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-cpm.c_cpm_i2c_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-cpm.c_cpm_i2c_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpm_i2c = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_4__*, i32, i32*, i32*, %struct.TYPE_3__*, i32*, i32*, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@I2MOD_EN = common dso_local global i32 0, align 4
@CPM_MAXBD = common dso_local global i32 0, align 4
@CPM_MAX_READ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpm_i2c*)* @cpm_i2c_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpm_i2c_shutdown(%struct.cpm_i2c* %0) #0 {
  %2 = alloca %struct.cpm_i2c*, align 8
  %3 = alloca i32, align 4
  store %struct.cpm_i2c* %0, %struct.cpm_i2c** %2, align 8
  %4 = load %struct.cpm_i2c*, %struct.cpm_i2c** %2, align 8
  %5 = getelementptr inbounds %struct.cpm_i2c, %struct.cpm_i2c* %4, i32 0, i32 3
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  %8 = load i32, i32* @I2MOD_EN, align 4
  %9 = call i32 @clrbits8(i32* %7, i32 %8)
  %10 = load %struct.cpm_i2c*, %struct.cpm_i2c** %2, align 8
  %11 = getelementptr inbounds %struct.cpm_i2c, %struct.cpm_i2c* %10, i32 0, i32 3
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = call i32 @out_8(i32* %13, i32 0)
  %15 = load %struct.cpm_i2c*, %struct.cpm_i2c** %2, align 8
  %16 = getelementptr inbounds %struct.cpm_i2c, %struct.cpm_i2c* %15, i32 0, i32 3
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = call i32 @out_8(i32* %18, i32 255)
  %20 = load %struct.cpm_i2c*, %struct.cpm_i2c** %2, align 8
  %21 = getelementptr inbounds %struct.cpm_i2c, %struct.cpm_i2c* %20, i32 0, i32 11
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.cpm_i2c*, %struct.cpm_i2c** %2, align 8
  %24 = getelementptr inbounds %struct.cpm_i2c, %struct.cpm_i2c* %23, i32 0, i32 10
  %25 = call i32 @free_irq(i32 %22, i32* %24)
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %73, %1
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @CPM_MAXBD, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %76

30:                                               ; preds = %26
  %31 = load %struct.cpm_i2c*, %struct.cpm_i2c** %2, align 8
  %32 = getelementptr inbounds %struct.cpm_i2c, %struct.cpm_i2c* %31, i32 0, i32 7
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* @CPM_MAX_READ, align 8
  %36 = add nsw i64 %35, 1
  %37 = load %struct.cpm_i2c*, %struct.cpm_i2c** %2, align 8
  %38 = getelementptr inbounds %struct.cpm_i2c, %struct.cpm_i2c* %37, i32 0, i32 9
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.cpm_i2c*, %struct.cpm_i2c** %2, align 8
  %45 = getelementptr inbounds %struct.cpm_i2c, %struct.cpm_i2c* %44, i32 0, i32 8
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @dma_free_coherent(i32* %34, i64 %36, i32 %43, i32 %50)
  %52 = load %struct.cpm_i2c*, %struct.cpm_i2c** %2, align 8
  %53 = getelementptr inbounds %struct.cpm_i2c, %struct.cpm_i2c* %52, i32 0, i32 7
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i64, i64* @CPM_MAX_READ, align 8
  %57 = add nsw i64 %56, 1
  %58 = load %struct.cpm_i2c*, %struct.cpm_i2c** %2, align 8
  %59 = getelementptr inbounds %struct.cpm_i2c, %struct.cpm_i2c* %58, i32 0, i32 6
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.cpm_i2c*, %struct.cpm_i2c** %2, align 8
  %66 = getelementptr inbounds %struct.cpm_i2c, %struct.cpm_i2c* %65, i32 0, i32 5
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %3, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @dma_free_coherent(i32* %55, i64 %57, i32 %64, i32 %71)
  br label %73

73:                                               ; preds = %30
  %74 = load i32, i32* %3, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %3, align 4
  br label %26

76:                                               ; preds = %26
  %77 = load %struct.cpm_i2c*, %struct.cpm_i2c** %2, align 8
  %78 = getelementptr inbounds %struct.cpm_i2c, %struct.cpm_i2c* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @cpm_muram_free(i32 %79)
  %81 = load %struct.cpm_i2c*, %struct.cpm_i2c** %2, align 8
  %82 = getelementptr inbounds %struct.cpm_i2c, %struct.cpm_i2c* %81, i32 0, i32 3
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = call i32 @iounmap(%struct.TYPE_4__* %83)
  %85 = load %struct.cpm_i2c*, %struct.cpm_i2c** %2, align 8
  %86 = getelementptr inbounds %struct.cpm_i2c, %struct.cpm_i2c* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp eq i32 %87, 1
  br i1 %88, label %89, label %99

89:                                               ; preds = %76
  %90 = load %struct.cpm_i2c*, %struct.cpm_i2c** %2, align 8
  %91 = getelementptr inbounds %struct.cpm_i2c, %struct.cpm_i2c* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %89
  %95 = load %struct.cpm_i2c*, %struct.cpm_i2c** %2, align 8
  %96 = getelementptr inbounds %struct.cpm_i2c, %struct.cpm_i2c* %95, i32 0, i32 2
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = call i32 @iounmap(%struct.TYPE_4__* %97)
  br label %99

99:                                               ; preds = %94, %89, %76
  %100 = load %struct.cpm_i2c*, %struct.cpm_i2c** %2, align 8
  %101 = getelementptr inbounds %struct.cpm_i2c, %struct.cpm_i2c* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp eq i32 %102, 2
  br i1 %103, label %104, label %109

104:                                              ; preds = %99
  %105 = load %struct.cpm_i2c*, %struct.cpm_i2c** %2, align 8
  %106 = getelementptr inbounds %struct.cpm_i2c, %struct.cpm_i2c* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @cpm_muram_free(i32 %107)
  br label %109

109:                                              ; preds = %104, %99
  ret void
}

declare dso_local i32 @clrbits8(i32*, i32) #1

declare dso_local i32 @out_8(i32*, i32) #1

declare dso_local i32 @free_irq(i32, i32*) #1

declare dso_local i32 @dma_free_coherent(i32*, i64, i32, i32) #1

declare dso_local i32 @cpm_muram_free(i32) #1

declare dso_local i32 @iounmap(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
