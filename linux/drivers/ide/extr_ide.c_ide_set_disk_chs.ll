; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide.c_ide_set_disk_chs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide.c_ide_set_disk_chs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.kernel_param = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"%u.%u:%u,%u,%u\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%u.%u:%u\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MAX_DRIVES = common dso_local global i32 0, align 4
@MAX_HWIFS = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@ide_disks = common dso_local global i32 0, align 4
@ide_disks_chs = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.kernel_param*)* @ide_set_disk_chs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ide_set_disk_chs(i8* %0, %struct.kernel_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.kernel_param*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.kernel_param* %1, %struct.kernel_param** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 1, i32* %12, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 (i8*, i8*, i32*, i32*, i32*, ...) @sscanf(i8* %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %6, i32* %7, i32* %8, i32* %9, i32* %10)
  %15 = icmp ne i32 %14, 5
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 (i8*, i8*, i32*, i32*, i32*, ...) @sscanf(i8* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* %6, i32* %7, i32* %12)
  %19 = icmp ne i32 %18, 3
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %86

23:                                               ; preds = %16, %2
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @MAX_DRIVES, align 4
  %26 = mul i32 %24, %25
  %27 = load i32, i32* %7, align 4
  %28 = add i32 %26, %27
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @MAX_HWIFS, align 4
  %31 = load i32, i32* @MAX_DRIVES, align 4
  %32 = mul i32 %30, %31
  %33 = icmp uge i32 %29, %32
  br i1 %33, label %37, label %34

34:                                               ; preds = %23
  %35 = load i32, i32* %12, align 4
  %36 = icmp ugt i32 %35, 1
  br i1 %36, label %37, label %40

37:                                               ; preds = %34, %23
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %86

40:                                               ; preds = %34
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @INT_MAX, align 4
  %43 = icmp ugt i32 %41, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* %9, align 4
  %46 = icmp ugt i32 %45, 255
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %10, align 4
  %49 = icmp ugt i32 %48, 255
  br i1 %49, label %50, label %53

50:                                               ; preds = %47, %44, %40
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %86

53:                                               ; preds = %47
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i32, i32* %11, align 4
  %58 = shl i32 1, %57
  %59 = load i32, i32* @ide_disks, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* @ide_disks, align 4
  br label %67

61:                                               ; preds = %53
  %62 = load i32, i32* %11, align 4
  %63 = shl i32 1, %62
  %64 = xor i32 %63, -1
  %65 = load i32, i32* @ide_disks, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* @ide_disks, align 4
  br label %67

67:                                               ; preds = %61, %56
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ide_disks_chs, align 8
  %70 = load i32, i32* %11, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  store i32 %68, i32* %73, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ide_disks_chs, align 8
  %76 = load i32, i32* %11, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  store i32 %74, i32* %79, align 4
  %80 = load i32, i32* %10, align 4
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ide_disks_chs, align 8
  %82 = load i32, i32* %11, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 2
  store i32 %80, i32* %85, align 4
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %67, %50, %37, %20
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
