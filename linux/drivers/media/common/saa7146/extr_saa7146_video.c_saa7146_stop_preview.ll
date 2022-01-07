; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_video.c_saa7146_stop_preview.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_video.c_saa7146_stop_preview.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_fh = type { %struct.saa7146_dev* }
%struct.saa7146_dev = type { %struct.saa7146_vv* }
%struct.saa7146_vv = type { i32, %struct.saa7146_fh* }

@.str = private unnamed_addr constant [15 x i8] c"dev:%p, fh:%p\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"streaming capture is active\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@STATUS_OVERLAY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"no active overlay\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"overlay is active, but in another open\0A\00", align 1
@RESOURCE_DMA1_HPS = common dso_local global i32 0, align 4
@RESOURCE_DMA2_CLP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @saa7146_stop_preview(%struct.saa7146_fh* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.saa7146_fh*, align 8
  %4 = alloca %struct.saa7146_dev*, align 8
  %5 = alloca %struct.saa7146_vv*, align 8
  store %struct.saa7146_fh* %0, %struct.saa7146_fh** %3, align 8
  %6 = load %struct.saa7146_fh*, %struct.saa7146_fh** %3, align 8
  %7 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %6, i32 0, i32 0
  %8 = load %struct.saa7146_dev*, %struct.saa7146_dev** %7, align 8
  store %struct.saa7146_dev* %8, %struct.saa7146_dev** %4, align 8
  %9 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %10 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %9, i32 0, i32 0
  %11 = load %struct.saa7146_vv*, %struct.saa7146_vv** %10, align 8
  store %struct.saa7146_vv* %11, %struct.saa7146_vv** %5, align 8
  %12 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %13 = load %struct.saa7146_fh*, %struct.saa7146_fh** %3, align 8
  %14 = call i32 @DEB_EE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.saa7146_dev* %12, %struct.saa7146_fh* %13)
  %15 = load %struct.saa7146_fh*, %struct.saa7146_fh** %3, align 8
  %16 = call i64 @IS_CAPTURE_ACTIVE(%struct.saa7146_fh* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = call i32 @DEB_D(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* @EBUSY, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %53

22:                                               ; preds = %1
  %23 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %24 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @STATUS_OVERLAY, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = call i32 @DEB_D(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %53

31:                                               ; preds = %22
  %32 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %33 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %32, i32 0, i32 1
  %34 = load %struct.saa7146_fh*, %struct.saa7146_fh** %33, align 8
  %35 = load %struct.saa7146_fh*, %struct.saa7146_fh** %3, align 8
  %36 = icmp ne %struct.saa7146_fh* %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = call i32 @DEB_D(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %39 = load i32, i32* @EBUSY, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %53

41:                                               ; preds = %31
  %42 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %43 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %42, i32 0, i32 0
  store i32 0, i32* %43, align 8
  %44 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %45 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %44, i32 0, i32 1
  store %struct.saa7146_fh* null, %struct.saa7146_fh** %45, align 8
  %46 = load %struct.saa7146_fh*, %struct.saa7146_fh** %3, align 8
  %47 = call i32 @saa7146_disable_overlay(%struct.saa7146_fh* %46)
  %48 = load %struct.saa7146_fh*, %struct.saa7146_fh** %3, align 8
  %49 = load i32, i32* @RESOURCE_DMA1_HPS, align 4
  %50 = load i32, i32* @RESOURCE_DMA2_CLP, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @saa7146_res_free(%struct.saa7146_fh* %48, i32 %51)
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %41, %37, %29, %18
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @DEB_EE(i8*, %struct.saa7146_dev*, %struct.saa7146_fh*) #1

declare dso_local i64 @IS_CAPTURE_ACTIVE(%struct.saa7146_fh*) #1

declare dso_local i32 @DEB_D(i8*) #1

declare dso_local i32 @saa7146_disable_overlay(%struct.saa7146_fh*) #1

declare dso_local i32 @saa7146_res_free(%struct.saa7146_fh*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
