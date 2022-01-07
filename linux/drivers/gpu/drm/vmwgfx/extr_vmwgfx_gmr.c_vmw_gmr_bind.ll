; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_gmr.c_vmw_gmr_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_gmr.c_vmw_gmr_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { i32 }
%struct.vmw_sg_table = type { i32 }
%struct.vmw_piter = type { i32 }

@SVGA_CAP_GMR2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmw_gmr_bind(%struct.vmw_private* %0, %struct.vmw_sg_table* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vmw_private*, align 8
  %7 = alloca %struct.vmw_sg_table*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.vmw_piter, align 4
  store %struct.vmw_private* %0, %struct.vmw_private** %6, align 8
  store %struct.vmw_sg_table* %1, %struct.vmw_sg_table** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.vmw_sg_table*, %struct.vmw_sg_table** %7, align 8
  %12 = call i32 @vmw_piter_start(%struct.vmw_piter* %10, %struct.vmw_sg_table* %11, i32 0)
  %13 = call i32 @vmw_piter_next(%struct.vmw_piter* %10)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %39

20:                                               ; preds = %4
  %21 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %22 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @SVGA_CAP_GMR2, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %20
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %39

34:                                               ; preds = %20
  %35 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @vmw_gmr2_bind(%struct.vmw_private* %35, %struct.vmw_piter* %10, i64 %36, i32 %37)
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %34, %31, %19
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i32 @vmw_piter_start(%struct.vmw_piter*, %struct.vmw_sg_table*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vmw_piter_next(%struct.vmw_piter*) #1

declare dso_local i32 @vmw_gmr2_bind(%struct.vmw_private*, %struct.vmw_piter*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
