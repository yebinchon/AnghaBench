; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_fops.c_vv_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_fops.c_vv_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (%struct.saa7146_dev*, i32)* }
%struct.saa7146_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 (%struct.saa7146_dev*, i32)* }

@.str = private unnamed_addr constant [20 x i8] c"dev:%p, isr:0x%08x\0A\00", align 1
@MASK_27 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"irq: RPS0 (0x%08x)\0A\00", align 1
@saa7146_video_uops = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@MASK_28 = common dso_local global i32 0, align 4
@MC2 = common dso_local global i32 0, align 4
@MASK_15 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"irq: RPS1 vbi workaround (0x%08x)\0A\00", align 1
@MASK_31 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"irq: RPS1 (0x%08x)\0A\00", align 1
@saa7146_vbi_uops = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.saa7146_dev*, i64)* @vv_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vv_callback(%struct.saa7146_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.saa7146_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.saa7146_dev* %0, %struct.saa7146_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = trunc i64 %7 to i32
  store i32 %8, i32* %5, align 4
  %9 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %10 = load i64, i64* %4, align 8
  %11 = trunc i64 %10 to i32
  %12 = call i32 (i8*, ...) @DEB_INT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.saa7146_dev* %9, i32 %11)
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @MASK_27, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 0, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = call i32 (i8*, ...) @DEB_INT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = load i32 (%struct.saa7146_dev*, i32)*, i32 (%struct.saa7146_dev*, i32)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @saa7146_video_uops, i32 0, i32 0), align 8
  %21 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 %20(%struct.saa7146_dev* %21, i32 %22)
  br label %24

24:                                               ; preds = %17, %2
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @MASK_28, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 0, %27
  br i1 %28, label %29, label %56

29:                                               ; preds = %24
  %30 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %31 = load i32, i32* @MC2, align 4
  %32 = call i32 @saa7146_read(%struct.saa7146_dev* %30, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @MASK_15, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 0, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %29
  %38 = load i32, i32* %5, align 4
  %39 = call i32 (i8*, ...) @DEB_INT(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  %40 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %41 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = call i32 @wake_up(i32* %43)
  %45 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %46 = load i32, i32* @MC2, align 4
  %47 = load i32, i32* @MASK_31, align 4
  %48 = call i32 @saa7146_write(%struct.saa7146_dev* %45, i32 %46, i32 %47)
  br label %56

49:                                               ; preds = %29
  %50 = load i32, i32* %5, align 4
  %51 = call i32 (i8*, ...) @DEB_INT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  %52 = load i32 (%struct.saa7146_dev*, i32)*, i32 (%struct.saa7146_dev*, i32)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @saa7146_vbi_uops, i32 0, i32 0), align 8
  %53 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 %52(%struct.saa7146_dev* %53, i32 %54)
  br label %56

56:                                               ; preds = %37, %49, %24
  ret void
}

declare dso_local i32 @DEB_INT(i8*, ...) #1

declare dso_local i32 @saa7146_read(%struct.saa7146_dev*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @saa7146_write(%struct.saa7146_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
