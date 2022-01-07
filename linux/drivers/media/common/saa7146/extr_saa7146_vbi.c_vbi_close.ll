; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_vbi.c_vbi_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_vbi.c_vbi_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_dev = type { %struct.saa7146_vv* }
%struct.saa7146_vv = type { %struct.saa7146_fh* }
%struct.saa7146_fh = type { i32 }
%struct.file = type { %struct.saa7146_fh* }

@.str = private unnamed_addr constant [15 x i8] c"dev:%p, fh:%p\0A\00", align 1
@RESOURCE_DMA3_BRS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.saa7146_dev*, %struct.file*)* @vbi_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vbi_close(%struct.saa7146_dev* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.saa7146_dev*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.saa7146_fh*, align 8
  %6 = alloca %struct.saa7146_vv*, align 8
  store %struct.saa7146_dev* %0, %struct.saa7146_dev** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = load %struct.file*, %struct.file** %4, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load %struct.saa7146_fh*, %struct.saa7146_fh** %8, align 8
  store %struct.saa7146_fh* %9, %struct.saa7146_fh** %5, align 8
  %10 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %11 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %10, i32 0, i32 0
  %12 = load %struct.saa7146_vv*, %struct.saa7146_vv** %11, align 8
  store %struct.saa7146_vv* %12, %struct.saa7146_vv** %6, align 8
  %13 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %14 = load %struct.saa7146_fh*, %struct.saa7146_fh** %5, align 8
  %15 = call i32 @DEB_VBI(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.saa7146_dev* %13, %struct.saa7146_fh* %14)
  %16 = load %struct.saa7146_fh*, %struct.saa7146_fh** %5, align 8
  %17 = load %struct.saa7146_vv*, %struct.saa7146_vv** %6, align 8
  %18 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %17, i32 0, i32 0
  %19 = load %struct.saa7146_fh*, %struct.saa7146_fh** %18, align 8
  %20 = icmp eq %struct.saa7146_fh* %16, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load %struct.saa7146_fh*, %struct.saa7146_fh** %5, align 8
  %23 = load %struct.file*, %struct.file** %4, align 8
  %24 = call i32 @vbi_stop(%struct.saa7146_fh* %22, %struct.file* %23)
  br label %25

25:                                               ; preds = %21, %2
  %26 = load %struct.saa7146_fh*, %struct.saa7146_fh** %5, align 8
  %27 = load i32, i32* @RESOURCE_DMA3_BRS, align 4
  %28 = call i32 @saa7146_res_free(%struct.saa7146_fh* %26, i32 %27)
  ret void
}

declare dso_local i32 @DEB_VBI(i8*, %struct.saa7146_dev*, %struct.saa7146_fh*) #1

declare dso_local i32 @vbi_stop(%struct.saa7146_fh*, %struct.file*) #1

declare dso_local i32 @saa7146_res_free(%struct.saa7146_fh*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
