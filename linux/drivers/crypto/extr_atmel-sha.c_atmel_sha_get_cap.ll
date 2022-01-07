; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_get_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_get_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_sha_dev = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [49 x i8] c"Unmanaged sha version, set minimum capabilities\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atmel_sha_dev*)* @atmel_sha_get_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_sha_get_cap(%struct.atmel_sha_dev* %0) #0 {
  %2 = alloca %struct.atmel_sha_dev*, align 8
  store %struct.atmel_sha_dev* %0, %struct.atmel_sha_dev** %2, align 8
  %3 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %2, align 8
  %4 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  store i32 0, i32* %5, align 4
  %6 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %2, align 8
  %7 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  store i32 0, i32* %8, align 4
  %9 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %2, align 8
  %10 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  store i32 0, i32* %11, align 4
  %12 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %2, align 8
  %13 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 3
  store i32 0, i32* %14, align 4
  %15 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %2, align 8
  %16 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 4
  store i32 0, i32* %17, align 4
  %18 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %2, align 8
  %19 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 5
  store i32 0, i32* %20, align 4
  %21 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %2, align 8
  %22 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 4080
  switch i32 %24, label %84 [
    i32 1296, label %25
    i32 1056, label %44
    i32 1040, label %60
    i32 1024, label %73
    i32 800, label %83
  ]

25:                                               ; preds = %1
  %26 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %2, align 8
  %27 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  %29 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %2, align 8
  %30 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i32 1, i32* %31, align 4
  %32 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %2, align 8
  %33 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  store i32 1, i32* %34, align 4
  %35 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %2, align 8
  %36 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 3
  store i32 1, i32* %37, align 4
  %38 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %2, align 8
  %39 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 4
  store i32 1, i32* %40, align 4
  %41 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %2, align 8
  %42 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 5
  store i32 1, i32* %43, align 4
  br label %89

44:                                               ; preds = %1
  %45 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %2, align 8
  %46 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32 1, i32* %47, align 4
  %48 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %2, align 8
  %49 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store i32 1, i32* %50, align 4
  %51 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %2, align 8
  %52 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  store i32 1, i32* %53, align 4
  %54 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %2, align 8
  %55 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 3
  store i32 1, i32* %56, align 4
  %57 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %2, align 8
  %58 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 4
  store i32 1, i32* %59, align 4
  br label %89

60:                                               ; preds = %1
  %61 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %2, align 8
  %62 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i32 1, i32* %63, align 4
  %64 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %2, align 8
  %65 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  store i32 1, i32* %66, align 4
  %67 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %2, align 8
  %68 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  store i32 1, i32* %69, align 4
  %70 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %2, align 8
  %71 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 3
  store i32 1, i32* %72, align 4
  br label %89

73:                                               ; preds = %1
  %74 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %2, align 8
  %75 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store i32 1, i32* %76, align 4
  %77 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %2, align 8
  %78 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  store i32 1, i32* %79, align 4
  %80 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %2, align 8
  %81 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 2
  store i32 1, i32* %82, align 4
  br label %89

83:                                               ; preds = %1
  br label %89

84:                                               ; preds = %1
  %85 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %2, align 8
  %86 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @dev_warn(i32 %87, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %89

89:                                               ; preds = %84, %83, %73, %60, %44, %25
  ret void
}

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
