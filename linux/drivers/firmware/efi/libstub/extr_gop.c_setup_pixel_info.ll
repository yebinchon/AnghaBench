; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/libstub/extr_gop.c_setup_pixel_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/libstub/extr_gop.c_setup_pixel_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.screen_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.efi_pixel_bitmask = type { i32, i32, i32, i32 }

@PIXEL_RGB_RESERVED_8BIT_PER_COLOR = common dso_local global i32 0, align 4
@PIXEL_BGR_RESERVED_8BIT_PER_COLOR = common dso_local global i32 0, align 4
@PIXEL_BIT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.screen_info*, i32, i64, i64, i32)* @setup_pixel_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_pixel_info(%struct.screen_info* %0, i32 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.efi_pixel_bitmask, align 4
  %7 = alloca %struct.screen_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = bitcast %struct.efi_pixel_bitmask* %6 to { i64, i64 }*
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %10, i32 0, i32 0
  store i64 %2, i64* %11, align 4
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %10, i32 0, i32 1
  store i64 %3, i64* %12, align 4
  store %struct.screen_info* %0, %struct.screen_info** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %4, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @PIXEL_RGB_RESERVED_8BIT_PER_COLOR, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %39

16:                                               ; preds = %5
  %17 = load %struct.screen_info*, %struct.screen_info** %7, align 8
  %18 = getelementptr inbounds %struct.screen_info, %struct.screen_info* %17, i32 0, i32 0
  store i32 32, i32* %18, align 4
  %19 = load i32, i32* %8, align 4
  %20 = mul nsw i32 %19, 4
  %21 = load %struct.screen_info*, %struct.screen_info** %7, align 8
  %22 = getelementptr inbounds %struct.screen_info, %struct.screen_info* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.screen_info*, %struct.screen_info** %7, align 8
  %24 = getelementptr inbounds %struct.screen_info, %struct.screen_info* %23, i32 0, i32 2
  store i32 8, i32* %24, align 4
  %25 = load %struct.screen_info*, %struct.screen_info** %7, align 8
  %26 = getelementptr inbounds %struct.screen_info, %struct.screen_info* %25, i32 0, i32 3
  store i32 0, i32* %26, align 4
  %27 = load %struct.screen_info*, %struct.screen_info** %7, align 8
  %28 = getelementptr inbounds %struct.screen_info, %struct.screen_info* %27, i32 0, i32 4
  store i32 8, i32* %28, align 4
  %29 = load %struct.screen_info*, %struct.screen_info** %7, align 8
  %30 = getelementptr inbounds %struct.screen_info, %struct.screen_info* %29, i32 0, i32 5
  store i32 8, i32* %30, align 4
  %31 = load %struct.screen_info*, %struct.screen_info** %7, align 8
  %32 = getelementptr inbounds %struct.screen_info, %struct.screen_info* %31, i32 0, i32 6
  store i32 8, i32* %32, align 4
  %33 = load %struct.screen_info*, %struct.screen_info** %7, align 8
  %34 = getelementptr inbounds %struct.screen_info, %struct.screen_info* %33, i32 0, i32 7
  store i32 16, i32* %34, align 4
  %35 = load %struct.screen_info*, %struct.screen_info** %7, align 8
  %36 = getelementptr inbounds %struct.screen_info, %struct.screen_info* %35, i32 0, i32 8
  store i32 8, i32* %36, align 4
  %37 = load %struct.screen_info*, %struct.screen_info** %7, align 8
  %38 = getelementptr inbounds %struct.screen_info, %struct.screen_info* %37, i32 0, i32 9
  store i32 24, i32* %38, align 4
  br label %151

39:                                               ; preds = %5
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @PIXEL_BGR_RESERVED_8BIT_PER_COLOR, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %66

43:                                               ; preds = %39
  %44 = load %struct.screen_info*, %struct.screen_info** %7, align 8
  %45 = getelementptr inbounds %struct.screen_info, %struct.screen_info* %44, i32 0, i32 0
  store i32 32, i32* %45, align 4
  %46 = load i32, i32* %8, align 4
  %47 = mul nsw i32 %46, 4
  %48 = load %struct.screen_info*, %struct.screen_info** %7, align 8
  %49 = getelementptr inbounds %struct.screen_info, %struct.screen_info* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.screen_info*, %struct.screen_info** %7, align 8
  %51 = getelementptr inbounds %struct.screen_info, %struct.screen_info* %50, i32 0, i32 2
  store i32 8, i32* %51, align 4
  %52 = load %struct.screen_info*, %struct.screen_info** %7, align 8
  %53 = getelementptr inbounds %struct.screen_info, %struct.screen_info* %52, i32 0, i32 3
  store i32 16, i32* %53, align 4
  %54 = load %struct.screen_info*, %struct.screen_info** %7, align 8
  %55 = getelementptr inbounds %struct.screen_info, %struct.screen_info* %54, i32 0, i32 4
  store i32 8, i32* %55, align 4
  %56 = load %struct.screen_info*, %struct.screen_info** %7, align 8
  %57 = getelementptr inbounds %struct.screen_info, %struct.screen_info* %56, i32 0, i32 5
  store i32 8, i32* %57, align 4
  %58 = load %struct.screen_info*, %struct.screen_info** %7, align 8
  %59 = getelementptr inbounds %struct.screen_info, %struct.screen_info* %58, i32 0, i32 6
  store i32 8, i32* %59, align 4
  %60 = load %struct.screen_info*, %struct.screen_info** %7, align 8
  %61 = getelementptr inbounds %struct.screen_info, %struct.screen_info* %60, i32 0, i32 7
  store i32 0, i32* %61, align 4
  %62 = load %struct.screen_info*, %struct.screen_info** %7, align 8
  %63 = getelementptr inbounds %struct.screen_info, %struct.screen_info* %62, i32 0, i32 8
  store i32 8, i32* %63, align 4
  %64 = load %struct.screen_info*, %struct.screen_info** %7, align 8
  %65 = getelementptr inbounds %struct.screen_info, %struct.screen_info* %64, i32 0, i32 9
  store i32 24, i32* %65, align 4
  br label %150

66:                                               ; preds = %39
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @PIXEL_BIT_MASK, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %124

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.efi_pixel_bitmask, %struct.efi_pixel_bitmask* %6, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.screen_info*, %struct.screen_info** %7, align 8
  %74 = getelementptr inbounds %struct.screen_info, %struct.screen_info* %73, i32 0, i32 3
  %75 = load %struct.screen_info*, %struct.screen_info** %7, align 8
  %76 = getelementptr inbounds %struct.screen_info, %struct.screen_info* %75, i32 0, i32 2
  %77 = call i32 @find_bits(i32 %72, i32* %74, i32* %76)
  %78 = getelementptr inbounds %struct.efi_pixel_bitmask, %struct.efi_pixel_bitmask* %6, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.screen_info*, %struct.screen_info** %7, align 8
  %81 = getelementptr inbounds %struct.screen_info, %struct.screen_info* %80, i32 0, i32 5
  %82 = load %struct.screen_info*, %struct.screen_info** %7, align 8
  %83 = getelementptr inbounds %struct.screen_info, %struct.screen_info* %82, i32 0, i32 4
  %84 = call i32 @find_bits(i32 %79, i32* %81, i32* %83)
  %85 = getelementptr inbounds %struct.efi_pixel_bitmask, %struct.efi_pixel_bitmask* %6, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.screen_info*, %struct.screen_info** %7, align 8
  %88 = getelementptr inbounds %struct.screen_info, %struct.screen_info* %87, i32 0, i32 7
  %89 = load %struct.screen_info*, %struct.screen_info** %7, align 8
  %90 = getelementptr inbounds %struct.screen_info, %struct.screen_info* %89, i32 0, i32 6
  %91 = call i32 @find_bits(i32 %86, i32* %88, i32* %90)
  %92 = getelementptr inbounds %struct.efi_pixel_bitmask, %struct.efi_pixel_bitmask* %6, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.screen_info*, %struct.screen_info** %7, align 8
  %95 = getelementptr inbounds %struct.screen_info, %struct.screen_info* %94, i32 0, i32 9
  %96 = load %struct.screen_info*, %struct.screen_info** %7, align 8
  %97 = getelementptr inbounds %struct.screen_info, %struct.screen_info* %96, i32 0, i32 8
  %98 = call i32 @find_bits(i32 %93, i32* %95, i32* %97)
  %99 = load %struct.screen_info*, %struct.screen_info** %7, align 8
  %100 = getelementptr inbounds %struct.screen_info, %struct.screen_info* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.screen_info*, %struct.screen_info** %7, align 8
  %103 = getelementptr inbounds %struct.screen_info, %struct.screen_info* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %101, %104
  %106 = load %struct.screen_info*, %struct.screen_info** %7, align 8
  %107 = getelementptr inbounds %struct.screen_info, %struct.screen_info* %106, i32 0, i32 6
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %105, %108
  %110 = load %struct.screen_info*, %struct.screen_info** %7, align 8
  %111 = getelementptr inbounds %struct.screen_info, %struct.screen_info* %110, i32 0, i32 8
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %109, %112
  %114 = load %struct.screen_info*, %struct.screen_info** %7, align 8
  %115 = getelementptr inbounds %struct.screen_info, %struct.screen_info* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* %8, align 4
  %117 = load %struct.screen_info*, %struct.screen_info** %7, align 8
  %118 = getelementptr inbounds %struct.screen_info, %struct.screen_info* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = mul nsw i32 %116, %119
  %121 = sdiv i32 %120, 8
  %122 = load %struct.screen_info*, %struct.screen_info** %7, align 8
  %123 = getelementptr inbounds %struct.screen_info, %struct.screen_info* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  br label %149

124:                                              ; preds = %66
  %125 = load %struct.screen_info*, %struct.screen_info** %7, align 8
  %126 = getelementptr inbounds %struct.screen_info, %struct.screen_info* %125, i32 0, i32 0
  store i32 4, i32* %126, align 4
  %127 = load %struct.screen_info*, %struct.screen_info** %7, align 8
  %128 = getelementptr inbounds %struct.screen_info, %struct.screen_info* %127, i32 0, i32 10
  %129 = load i32, i32* %128, align 4
  %130 = sdiv i32 %129, 2
  %131 = load %struct.screen_info*, %struct.screen_info** %7, align 8
  %132 = getelementptr inbounds %struct.screen_info, %struct.screen_info* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 4
  %133 = load %struct.screen_info*, %struct.screen_info** %7, align 8
  %134 = getelementptr inbounds %struct.screen_info, %struct.screen_info* %133, i32 0, i32 2
  store i32 0, i32* %134, align 4
  %135 = load %struct.screen_info*, %struct.screen_info** %7, align 8
  %136 = getelementptr inbounds %struct.screen_info, %struct.screen_info* %135, i32 0, i32 3
  store i32 0, i32* %136, align 4
  %137 = load %struct.screen_info*, %struct.screen_info** %7, align 8
  %138 = getelementptr inbounds %struct.screen_info, %struct.screen_info* %137, i32 0, i32 4
  store i32 0, i32* %138, align 4
  %139 = load %struct.screen_info*, %struct.screen_info** %7, align 8
  %140 = getelementptr inbounds %struct.screen_info, %struct.screen_info* %139, i32 0, i32 5
  store i32 0, i32* %140, align 4
  %141 = load %struct.screen_info*, %struct.screen_info** %7, align 8
  %142 = getelementptr inbounds %struct.screen_info, %struct.screen_info* %141, i32 0, i32 6
  store i32 0, i32* %142, align 4
  %143 = load %struct.screen_info*, %struct.screen_info** %7, align 8
  %144 = getelementptr inbounds %struct.screen_info, %struct.screen_info* %143, i32 0, i32 7
  store i32 0, i32* %144, align 4
  %145 = load %struct.screen_info*, %struct.screen_info** %7, align 8
  %146 = getelementptr inbounds %struct.screen_info, %struct.screen_info* %145, i32 0, i32 8
  store i32 0, i32* %146, align 4
  %147 = load %struct.screen_info*, %struct.screen_info** %7, align 8
  %148 = getelementptr inbounds %struct.screen_info, %struct.screen_info* %147, i32 0, i32 9
  store i32 0, i32* %148, align 4
  br label %149

149:                                              ; preds = %124, %70
  br label %150

150:                                              ; preds = %149, %43
  br label %151

151:                                              ; preds = %150, %16
  ret void
}

declare dso_local i32 @find_bits(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
