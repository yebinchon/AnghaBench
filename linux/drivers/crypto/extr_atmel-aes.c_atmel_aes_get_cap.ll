; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-aes.c_atmel_aes_get_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-aes.c_atmel_aes_get_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_aes_dev = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [49 x i8] c"Unmanaged aes version, set minimum capabilities\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atmel_aes_dev*)* @atmel_aes_get_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_aes_get_cap(%struct.atmel_aes_dev* %0) #0 {
  %2 = alloca %struct.atmel_aes_dev*, align 8
  store %struct.atmel_aes_dev* %0, %struct.atmel_aes_dev** %2, align 8
  %3 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %4 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  store i32 0, i32* %5, align 4
  %6 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %7 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  store i32 0, i32* %8, align 4
  %9 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %10 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  store i32 0, i32* %11, align 4
  %12 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %13 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 3
  store i32 0, i32* %14, align 4
  %15 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %16 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 4
  store i32 0, i32* %17, align 4
  %18 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %19 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 5
  store i32 0, i32* %20, align 4
  %21 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %22 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 6
  store i32 1, i32* %23, align 4
  %24 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %25 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 4080
  switch i32 %27, label %77 [
    i32 1280, label %28
    i32 512, label %50
    i32 304, label %66
    i32 288, label %76
  ]

28:                                               ; preds = %1
  %29 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %30 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 1, i32* %31, align 4
  %32 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %33 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  store i32 1, i32* %34, align 4
  %35 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %36 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  store i32 1, i32* %37, align 4
  %38 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %39 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 3
  store i32 1, i32* %40, align 4
  %41 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %42 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 4
  store i32 1, i32* %43, align 4
  %44 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %45 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 5
  store i32 1, i32* %46, align 4
  %47 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %48 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 6
  store i32 4, i32* %49, align 4
  br label %82

50:                                               ; preds = %1
  %51 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %52 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i32 1, i32* %53, align 4
  %54 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %55 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  store i32 1, i32* %56, align 4
  %57 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %58 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  store i32 1, i32* %59, align 4
  %60 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %61 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 3
  store i32 1, i32* %62, align 4
  %63 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %64 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 6
  store i32 4, i32* %65, align 4
  br label %82

66:                                               ; preds = %1
  %67 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %68 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i32 1, i32* %69, align 4
  %70 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %71 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  store i32 1, i32* %72, align 4
  %73 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %74 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 6
  store i32 4, i32* %75, align 4
  br label %82

76:                                               ; preds = %1
  br label %82

77:                                               ; preds = %1
  %78 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %79 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @dev_warn(i32 %80, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %82

82:                                               ; preds = %77, %76, %66, %50, %28
  ret void
}

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
