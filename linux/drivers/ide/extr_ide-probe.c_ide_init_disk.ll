; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-probe.c_ide_init_disk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-probe.c_ide_init_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gendisk = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8, i32 }

@PARTN_BITS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"hd%c\00", align 1
@MAX_DRIVES = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ide_init_disk(%struct.gendisk* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca %struct.gendisk*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  store %struct.gendisk* %0, %struct.gendisk** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 2
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %5, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = and i32 %12, 1
  store i32 %13, i32* %6, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %18 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @PARTN_BITS, align 4
  %21 = shl i32 %19, %20
  %22 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %23 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %25 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i8, i8* %28, align 4
  %30 = sext i8 %29 to i32
  %31 = load i8, i8* @MAX_DRIVES, align 1
  %32 = sext i8 %31 to i32
  %33 = mul nsw i32 %30, %32
  %34 = add nsw i32 97, %33
  %35 = load i32, i32* %6, align 4
  %36 = add i32 %34, %35
  %37 = trunc i32 %36 to i8
  %38 = call i32 @sprintf(i32 %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8 signext %37)
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %43 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  ret void
}

declare dso_local i32 @sprintf(i32, i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
