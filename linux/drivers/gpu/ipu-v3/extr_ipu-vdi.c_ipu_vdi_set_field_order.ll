; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-vdi.c_ipu_vdi_set_field_order.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-vdi.c_ipu_vdi_set_field_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_vdi = type { i32 }

@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@VDI_C = common dso_local global i32 0, align 4
@VDI_C_TOP_FIELD_MAN_1 = common dso_local global i32 0, align 4
@VDI_C_TOP_FIELD_AUTO_1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipu_vdi_set_field_order(%struct.ipu_vdi* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ipu_vdi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.ipu_vdi* %0, %struct.ipu_vdi** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %13 [
    i32 131, label %11
    i32 129, label %11
    i32 128, label %11
    i32 132, label %12
    i32 130, label %12
    i32 133, label %12
  ]

11:                                               ; preds = %3, %3, %3
  store i32 1, i32* %7, align 4
  br label %20

12:                                               ; preds = %3, %3, %3
  store i32 0, i32* %7, align 4
  br label %20

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @V4L2_STD_525_60, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 1, i32 0
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %13, %12, %11
  %21 = load %struct.ipu_vdi*, %struct.ipu_vdi** %4, align 8
  %22 = getelementptr inbounds %struct.ipu_vdi, %struct.ipu_vdi* %21, i32 0, i32 0
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.ipu_vdi*, %struct.ipu_vdi** %4, align 8
  %26 = load i32, i32* @VDI_C, align 4
  %27 = call i32 @ipu_vdi_read(%struct.ipu_vdi* %25, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %20
  %31 = load i32, i32* @VDI_C_TOP_FIELD_MAN_1, align 4
  %32 = load i32, i32* @VDI_C_TOP_FIELD_AUTO_1, align 4
  %33 = or i32 %31, %32
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %9, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %9, align 4
  br label %43

37:                                               ; preds = %20
  %38 = load i32, i32* @VDI_C_TOP_FIELD_MAN_1, align 4
  %39 = load i32, i32* @VDI_C_TOP_FIELD_AUTO_1, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* %9, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %37, %30
  %44 = load %struct.ipu_vdi*, %struct.ipu_vdi** %4, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @VDI_C, align 4
  %47 = call i32 @ipu_vdi_write(%struct.ipu_vdi* %44, i32 %45, i32 %46)
  %48 = load %struct.ipu_vdi*, %struct.ipu_vdi** %4, align 8
  %49 = getelementptr inbounds %struct.ipu_vdi, %struct.ipu_vdi* %48, i32 0, i32 0
  %50 = load i64, i64* %8, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ipu_vdi_read(%struct.ipu_vdi*, i32) #1

declare dso_local i32 @ipu_vdi_write(%struct.ipu_vdi*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
