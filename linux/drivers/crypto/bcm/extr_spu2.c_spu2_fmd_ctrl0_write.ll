; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_spu2.c_spu2_fmd_ctrl0_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_spu2.c_spu2_fmd_ctrl0_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SPU2_FMD = type { i32 }

@SPU2_CIPHER_TYPE_NONE = common dso_local global i32 0, align 4
@SPU2_CIPH_ENCRYPT_EN = common dso_local global i32 0, align 4
@SPU2_CIPH_TYPE_SHIFT = common dso_local global i32 0, align 4
@SPU2_CIPH_MODE_SHIFT = common dso_local global i32 0, align 4
@SPU2_PROTO_SEL_SHIFT = common dso_local global i32 0, align 4
@SPU2_HASH_FIRST = common dso_local global i32 0, align 4
@SPU2_HASH_TYPE_NONE = common dso_local global i32 0, align 4
@SPU2_CHK_TAG = common dso_local global i32 0, align 4
@SPU2_HASH_TYPE_SHIFT = common dso_local global i32 0, align 4
@SPU2_HASH_MODE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.SPU2_FMD*, i32, i32, i32, i32, i32, i32, i32)* @spu2_fmd_ctrl0_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spu2_fmd_ctrl0_write(%struct.SPU2_FMD* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.SPU2_FMD*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.SPU2_FMD* %0, %struct.SPU2_FMD** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %18 = load i32, i32* %13, align 4
  %19 = load i32, i32* @SPU2_CIPHER_TYPE_NONE, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %8
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* @SPU2_CIPH_ENCRYPT_EN, align 4
  %26 = load i32, i32* %17, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %17, align 4
  br label %28

28:                                               ; preds = %24, %21, %8
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* @SPU2_CIPH_TYPE_SHIFT, align 4
  %31 = shl i32 %29, %30
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* @SPU2_CIPH_MODE_SHIFT, align 4
  %34 = shl i32 %32, %33
  %35 = or i32 %31, %34
  %36 = load i32, i32* %17, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %17, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %28
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* @SPU2_PROTO_SEL_SHIFT, align 4
  %43 = shl i32 %41, %42
  %44 = load i32, i32* %17, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %17, align 4
  br label %46

46:                                               ; preds = %40, %28
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i32, i32* @SPU2_HASH_FIRST, align 4
  %51 = load i32, i32* %17, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %17, align 4
  br label %53

53:                                               ; preds = %49, %46
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = load i32, i32* %15, align 4
  %58 = load i32, i32* @SPU2_HASH_TYPE_NONE, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load i32, i32* @SPU2_CHK_TAG, align 4
  %62 = load i32, i32* %17, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %17, align 4
  br label %64

64:                                               ; preds = %60, %56, %53
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* @SPU2_HASH_TYPE_SHIFT, align 4
  %67 = shl i32 %65, %66
  %68 = load i32, i32* %16, align 4
  %69 = load i32, i32* @SPU2_HASH_MODE_SHIFT, align 4
  %70 = shl i32 %68, %69
  %71 = or i32 %67, %70
  %72 = load i32, i32* %17, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %17, align 4
  %74 = load i32, i32* %17, align 4
  %75 = call i32 @cpu_to_le64(i32 %74)
  %76 = load %struct.SPU2_FMD*, %struct.SPU2_FMD** %9, align 8
  %77 = getelementptr inbounds %struct.SPU2_FMD, %struct.SPU2_FMD* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  ret void
}

declare dso_local i32 @cpu_to_le64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
