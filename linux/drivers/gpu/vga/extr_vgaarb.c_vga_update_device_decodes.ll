; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/vga/extr_vgaarb.c_vga_update_device_decodes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/vga/extr_vgaarb.c_vga_update_device_decodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vga_device = type { i32, i32, i32, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [55 x i8] c"changed VGA decodes: olddecodes=%s,decodes=%s:owns=%s\0A\00", align 1
@VGA_RSRC_LEGACY_IO = common dso_local global i32 0, align 4
@VGA_RSRC_LEGACY_MEM = common dso_local global i32 0, align 4
@VGA_RSRC_LEGACY_MASK = common dso_local global i32 0, align 4
@vga_decode_count = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"decoding count now is: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vga_device*, i32)* @vga_update_device_decodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vga_update_device_decodes(%struct.vga_device* %0, i32 %1) #0 {
  %3 = alloca %struct.vga_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vga_device* %0, %struct.vga_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.vga_device*, %struct.vga_device** %3, align 8
  %10 = getelementptr inbounds %struct.vga_device, %struct.vga_device* %9, i32 0, i32 5
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %5, align 8
  %13 = load %struct.vga_device*, %struct.vga_device** %3, align 8
  %14 = getelementptr inbounds %struct.vga_device, %struct.vga_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %4, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %7, align 4
  %20 = load %struct.vga_device*, %struct.vga_device** %3, align 8
  %21 = getelementptr inbounds %struct.vga_device, %struct.vga_device* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.vga_device*, %struct.vga_device** %3, align 8
  %27 = getelementptr inbounds %struct.vga_device, %struct.vga_device* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.device*, %struct.device** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @vga_iostate_to_str(i32 %29)
  %31 = load %struct.vga_device*, %struct.vga_device** %3, align 8
  %32 = getelementptr inbounds %struct.vga_device, %struct.vga_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @vga_iostate_to_str(i32 %33)
  %35 = load %struct.vga_device*, %struct.vga_device** %3, align 8
  %36 = getelementptr inbounds %struct.vga_device, %struct.vga_device* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @vga_iostate_to_str(i32 %37)
  %39 = call i32 @vgaarb_info(%struct.device* %28, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %34, i32 %38)
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %62

42:                                               ; preds = %2
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @VGA_RSRC_LEGACY_IO, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load %struct.vga_device*, %struct.vga_device** %3, align 8
  %49 = getelementptr inbounds %struct.vga_device, %struct.vga_device* %48, i32 0, i32 4
  store i64 0, i64* %49, align 8
  br label %50

50:                                               ; preds = %47, %42
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @VGA_RSRC_LEGACY_MEM, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load %struct.vga_device*, %struct.vga_device** %3, align 8
  %57 = getelementptr inbounds %struct.vga_device, %struct.vga_device* %56, i32 0, i32 3
  store i64 0, i64* %57, align 8
  br label %58

58:                                               ; preds = %55, %50
  %59 = load %struct.vga_device*, %struct.vga_device** %3, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @__vga_put(%struct.vga_device* %59, i32 %60)
  br label %62

62:                                               ; preds = %58, %2
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @VGA_RSRC_LEGACY_MASK, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %62
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @VGA_RSRC_LEGACY_MASK, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %67
  %73 = load i32, i32* @vga_decode_count, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* @vga_decode_count, align 4
  br label %75

75:                                               ; preds = %72, %67, %62
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @VGA_RSRC_LEGACY_MASK, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %88, label %80

80:                                               ; preds = %75
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* @VGA_RSRC_LEGACY_MASK, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load i32, i32* @vga_decode_count, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* @vga_decode_count, align 4
  br label %88

88:                                               ; preds = %85, %80, %75
  %89 = load %struct.device*, %struct.device** %5, align 8
  %90 = load i32, i32* @vga_decode_count, align 4
  %91 = call i32 @vgaarb_dbg(%struct.device* %89, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  ret void
}

declare dso_local i32 @vgaarb_info(%struct.device*, i8*, i32, i32, i32) #1

declare dso_local i32 @vga_iostate_to_str(i32) #1

declare dso_local i32 @__vga_put(%struct.vga_device*, i32) #1

declare dso_local i32 @vgaarb_dbg(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
