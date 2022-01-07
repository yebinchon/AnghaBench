; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_venc.c_venc_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_venc.c_venc_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venc_device = type { i32 }

@VENC_F_CONTROL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Failed to reset venc\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.venc_device*)* @venc_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @venc_reset(%struct.venc_device* %0) #0 {
  %2 = alloca %struct.venc_device*, align 8
  %3 = alloca i32, align 4
  store %struct.venc_device* %0, %struct.venc_device** %2, align 8
  store i32 1000, i32* %3, align 4
  %4 = load %struct.venc_device*, %struct.venc_device** %2, align 8
  %5 = load i32, i32* @VENC_F_CONTROL, align 4
  %6 = call i32 @venc_write_reg(%struct.venc_device* %4, i32 %5, i32 256)
  br label %7

7:                                                ; preds = %19, %1
  %8 = load %struct.venc_device*, %struct.venc_device** %2, align 8
  %9 = load i32, i32* @VENC_F_CONTROL, align 4
  %10 = call i32 @venc_read_reg(%struct.venc_device* %8, i32 %9)
  %11 = and i32 %10, 256
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %7
  %14 = load i32, i32* %3, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %3, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = call i32 @DSSERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %20

19:                                               ; preds = %13
  br label %7

20:                                               ; preds = %17, %7
  ret void
}

declare dso_local i32 @venc_write_reg(%struct.venc_device*, i32, i32) #1

declare dso_local i32 @venc_read_reg(%struct.venc_device*, i32) #1

declare dso_local i32 @DSSERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
