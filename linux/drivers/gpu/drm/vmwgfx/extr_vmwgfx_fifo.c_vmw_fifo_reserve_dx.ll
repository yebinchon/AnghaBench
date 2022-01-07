; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_fifo.c_vmw_fifo_reserve_dx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_fifo.c_vmw_fifo_reserve_dx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { i64 }

@SVGA3D_INVALID_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Command buffer has not been allocated.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @vmw_fifo_reserve_dx(%struct.vmw_private* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.vmw_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.vmw_private* %0, %struct.vmw_private** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.vmw_private*, %struct.vmw_private** %5, align 8
  %10 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = load %struct.vmw_private*, %struct.vmw_private** %5, align 8
  %15 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i8* @vmw_cmdbuf_reserve(i64 %16, i32 %17, i32 %18, i32 0, i32* null)
  store i8* %19, i8** %8, align 8
  br label %31

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @SVGA3D_INVALID_ID, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load %struct.vmw_private*, %struct.vmw_private** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i8* @vmw_local_fifo_reserve(%struct.vmw_private* %25, i32 %26)
  store i8* %27, i8** %8, align 8
  br label %30

28:                                               ; preds = %20
  %29 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %8, align 8
  br label %30

30:                                               ; preds = %28, %24
  br label %31

31:                                               ; preds = %30, %13
  %32 = load i8*, i8** %8, align 8
  %33 = call i64 @IS_ERR_OR_NULL(i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i8* null, i8** %4, align 8
  br label %38

36:                                               ; preds = %31
  %37 = load i8*, i8** %8, align 8
  store i8* %37, i8** %4, align 8
  br label %38

38:                                               ; preds = %36, %35
  %39 = load i8*, i8** %4, align 8
  ret i8* %39
}

declare dso_local i8* @vmw_cmdbuf_reserve(i64, i32, i32, i32, i32*) #1

declare dso_local i8* @vmw_local_fifo_reserve(%struct.vmw_private*, i32) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i64 @IS_ERR_OR_NULL(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
