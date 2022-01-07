; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_vb2.c_dvb_vb2_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_vb2.c_dvb_vb2_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_vb2_ctx = type { i32, i32 }
%struct.vm_area_struct = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"[%s] errno=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"[%s] ret=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dvb_vb2_mmap(%struct.dvb_vb2_ctx* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_vb2_ctx*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i32, align 4
  store %struct.dvb_vb2_ctx* %0, %struct.dvb_vb2_ctx** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %7 = load %struct.dvb_vb2_ctx*, %struct.dvb_vb2_ctx** %4, align 8
  %8 = getelementptr inbounds %struct.dvb_vb2_ctx, %struct.dvb_vb2_ctx* %7, i32 0, i32 1
  %9 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %10 = call i32 @vb2_mmap(i32* %8, %struct.vm_area_struct* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.dvb_vb2_ctx*, %struct.dvb_vb2_ctx** %4, align 8
  %15 = getelementptr inbounds %struct.dvb_vb2_ctx, %struct.dvb_vb2_ctx* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17)
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %3, align 4
  br label %26

20:                                               ; preds = %2
  %21 = load %struct.dvb_vb2_ctx*, %struct.dvb_vb2_ctx** %4, align 8
  %22 = getelementptr inbounds %struct.dvb_vb2_ctx, %struct.dvb_vb2_ctx* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @dprintk(i32 3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %23, i32 %24)
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %20, %13
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @vb2_mmap(i32*, %struct.vm_area_struct*) #1

declare dso_local i32 @dprintk(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
