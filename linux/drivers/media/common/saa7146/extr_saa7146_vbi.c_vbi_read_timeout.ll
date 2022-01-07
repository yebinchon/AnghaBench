; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_vbi.c_vbi_read_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_vbi.c_vbi_read_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_vv = type { %struct.file* }
%struct.file = type { %struct.saa7146_fh* }
%struct.saa7146_fh = type { %struct.saa7146_dev* }
%struct.saa7146_dev = type { i32 }
%struct.timer_list = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"dev:%p, fh:%p\0A\00", align 1
@vv = common dso_local global %struct.saa7146_vv* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @vbi_read_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vbi_read_timeout(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.saa7146_vv*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.saa7146_fh*, align 8
  %6 = alloca %struct.saa7146_dev*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %7 = load %struct.saa7146_vv*, %struct.saa7146_vv** %3, align 8
  %8 = ptrtoint %struct.saa7146_vv* %7 to i32
  %9 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %10 = call %struct.saa7146_vv* @from_timer(i32 %8, %struct.timer_list* %9, void (%struct.timer_list*)* @vbi_read_timeout)
  store %struct.saa7146_vv* %10, %struct.saa7146_vv** %3, align 8
  %11 = load %struct.saa7146_vv*, %struct.saa7146_vv** %3, align 8
  %12 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %11, i32 0, i32 0
  %13 = load %struct.file*, %struct.file** %12, align 8
  store %struct.file* %13, %struct.file** %4, align 8
  %14 = load %struct.file*, %struct.file** %4, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 0
  %16 = load %struct.saa7146_fh*, %struct.saa7146_fh** %15, align 8
  store %struct.saa7146_fh* %16, %struct.saa7146_fh** %5, align 8
  %17 = load %struct.saa7146_fh*, %struct.saa7146_fh** %5, align 8
  %18 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %17, i32 0, i32 0
  %19 = load %struct.saa7146_dev*, %struct.saa7146_dev** %18, align 8
  store %struct.saa7146_dev* %19, %struct.saa7146_dev** %6, align 8
  %20 = load %struct.saa7146_dev*, %struct.saa7146_dev** %6, align 8
  %21 = load %struct.saa7146_fh*, %struct.saa7146_fh** %5, align 8
  %22 = call i32 @DEB_VBI(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.saa7146_dev* %20, %struct.saa7146_fh* %21)
  %23 = load %struct.saa7146_fh*, %struct.saa7146_fh** %5, align 8
  %24 = load %struct.file*, %struct.file** %4, align 8
  %25 = call i32 @vbi_stop(%struct.saa7146_fh* %23, %struct.file* %24)
  ret void
}

declare dso_local %struct.saa7146_vv* @from_timer(i32, %struct.timer_list*, void (%struct.timer_list*)*) #1

declare dso_local i32 @DEB_VBI(i8*, %struct.saa7146_dev*, %struct.saa7146_fh*) #1

declare dso_local i32 @vbi_stop(%struct.saa7146_fh*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
