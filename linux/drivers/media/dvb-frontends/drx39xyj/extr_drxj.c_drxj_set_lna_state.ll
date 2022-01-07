; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_drxj_set_lna_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_drxj_set_lna_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drx_demod_instance = type { i32 }
%struct.drxuio_cfg = type { i32, i8* }
%struct.drxuio_data = type { i32, i8* }

@DRX_UIO1 = common dso_local global i8* null, align 8
@DRX_UIO_MODE_READWRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to setup LNA GPIO!\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Failed to %sable LNA!\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"dis\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drx_demod_instance*, i32)* @drxj_set_lna_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drxj_set_lna_state(%struct.drx_demod_instance* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drx_demod_instance*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drxuio_cfg, align 8
  %7 = alloca %struct.drxuio_data, align 8
  %8 = alloca i32, align 4
  store %struct.drx_demod_instance* %0, %struct.drx_demod_instance** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i8*, i8** @DRX_UIO1, align 8
  %10 = getelementptr inbounds %struct.drxuio_cfg, %struct.drxuio_cfg* %6, i32 0, i32 1
  store i8* %9, i8** %10, align 8
  %11 = load i32, i32* @DRX_UIO_MODE_READWRITE, align 4
  %12 = getelementptr inbounds %struct.drxuio_cfg, %struct.drxuio_cfg* %6, i32 0, i32 0
  store i32 %11, i32* %12, align 8
  %13 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %14 = call i32 @ctrl_set_uio_cfg(%struct.drx_demod_instance* %13, %struct.drxuio_cfg* %6)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %3, align 4
  br label %37

20:                                               ; preds = %2
  %21 = load i8*, i8** @DRX_UIO1, align 8
  %22 = getelementptr inbounds %struct.drxuio_data, %struct.drxuio_data* %7, i32 0, i32 1
  store i8* %21, i8** %22, align 8
  %23 = load i32, i32* %5, align 4
  %24 = getelementptr inbounds %struct.drxuio_data, %struct.drxuio_data* %7, i32 0, i32 0
  store i32 %23, i32* %24, align 8
  %25 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %26 = call i32 @ctrl_uio_write(%struct.drx_demod_instance* %25, %struct.drxuio_data* %7)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %20
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %34 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %3, align 4
  br label %37

36:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %29, %17
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @ctrl_set_uio_cfg(%struct.drx_demod_instance*, %struct.drxuio_cfg*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @ctrl_uio_write(%struct.drx_demod_instance*, %struct.drxuio_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
