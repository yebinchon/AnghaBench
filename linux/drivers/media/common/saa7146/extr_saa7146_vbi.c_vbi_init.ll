; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_vbi.c_vbi_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_vbi.c_vbi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_dev = type { i32 }
%struct.saa7146_vv = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.saa7146_dev*, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"dev:%p\0A\00", align 1
@saa7146_buffer_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.saa7146_dev*, %struct.saa7146_vv*)* @vbi_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vbi_init(%struct.saa7146_dev* %0, %struct.saa7146_vv* %1) #0 {
  %3 = alloca %struct.saa7146_dev*, align 8
  %4 = alloca %struct.saa7146_vv*, align 8
  store %struct.saa7146_dev* %0, %struct.saa7146_dev** %3, align 8
  store %struct.saa7146_vv* %1, %struct.saa7146_vv** %4, align 8
  %5 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %6 = call i32 @DEB_VBI(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.saa7146_dev* %5)
  %7 = load %struct.saa7146_vv*, %struct.saa7146_vv** %4, align 8
  %8 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 2
  %10 = call i32 @INIT_LIST_HEAD(i32* %9)
  %11 = load %struct.saa7146_vv*, %struct.saa7146_vv** %4, align 8
  %12 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* @saa7146_buffer_timeout, align 4
  %15 = call i32 @timer_setup(i32* %13, i32 %14, i32 0)
  %16 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %17 = load %struct.saa7146_vv*, %struct.saa7146_vv** %4, align 8
  %18 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.saa7146_dev* %16, %struct.saa7146_dev** %19, align 8
  %20 = load %struct.saa7146_vv*, %struct.saa7146_vv** %4, align 8
  %21 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %20, i32 0, i32 0
  %22 = call i32 @init_waitqueue_head(i32* %21)
  ret void
}

declare dso_local i32 @DEB_VBI(i8*, %struct.saa7146_dev*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
