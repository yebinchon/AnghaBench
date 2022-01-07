; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/udl/extr_udl_modeset.c_udl_set_vid_cmds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/udl/extr_udl_modeset.c_udl_set_vid_cmds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, %struct.drm_display_mode*)* @udl_set_vid_cmds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @udl_set_vid_cmds(i8* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  %10 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %11 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %14 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %12, %15
  store i32 %16, i32* %5, align 4
  %17 = load i8*, i8** %3, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i8* @udl_set_register_lfsr16(i8* %17, i32 1, i32 %18)
  store i8* %19, i8** %3, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %22 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %20, %23
  store i32 %24, i32* %7, align 4
  %25 = load i8*, i8** %3, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i8* @udl_set_register_lfsr16(i8* %25, i32 3, i32 %26)
  store i8* %27, i8** %3, align 8
  %28 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %29 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %32 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 %30, %33
  store i32 %34, i32* %6, align 4
  %35 = load i8*, i8** %3, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i8* @udl_set_register_lfsr16(i8* %35, i32 5, i32 %36)
  store i8* %37, i8** %3, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %40 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %38, %41
  store i32 %42, i32* %8, align 4
  %43 = load i8*, i8** %3, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i8* @udl_set_register_lfsr16(i8* %43, i32 7, i32 %44)
  store i8* %45, i8** %3, align 8
  %46 = load i8*, i8** %3, align 8
  %47 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %48 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 %49, 1
  %51 = call i8* @udl_set_register_lfsr16(i8* %46, i32 9, i32 %50)
  store i8* %51, i8** %3, align 8
  %52 = load i8*, i8** %3, align 8
  %53 = call i8* @udl_set_register_lfsr16(i8* %52, i32 11, i32 1)
  store i8* %53, i8** %3, align 8
  %54 = load i8*, i8** %3, align 8
  %55 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %56 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %59 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 %57, %60
  %62 = add nsw i32 %61, 1
  %63 = call i8* @udl_set_register_lfsr16(i8* %54, i32 13, i32 %62)
  store i8* %63, i8** %3, align 8
  %64 = load i8*, i8** %3, align 8
  %65 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %66 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %65, i32 0, i32 7
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @udl_set_register_16(i8* %64, i32 15, i32 %67)
  store i8* %68, i8** %3, align 8
  %69 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %70 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %9, align 4
  %72 = load i8*, i8** %3, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i8* @udl_set_register_lfsr16(i8* %72, i32 17, i32 %73)
  store i8* %74, i8** %3, align 8
  %75 = load i8*, i8** %3, align 8
  %76 = call i8* @udl_set_register_lfsr16(i8* %75, i32 19, i32 0)
  store i8* %76, i8** %3, align 8
  %77 = load i8*, i8** %3, align 8
  %78 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %79 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %78, i32 0, i32 8
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %82 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = sub nsw i32 %80, %83
  %85 = call i8* @udl_set_register_lfsr16(i8* %77, i32 21, i32 %84)
  store i8* %85, i8** %3, align 8
  %86 = load i8*, i8** %3, align 8
  %87 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %88 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 4
  %90 = call i8* @udl_set_register_16(i8* %86, i32 23, i32 %89)
  store i8* %90, i8** %3, align 8
  %91 = load i8*, i8** %3, align 8
  %92 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %93 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %92, i32 0, i32 9
  %94 = load i32, i32* %93, align 4
  %95 = sdiv i32 %94, 5
  %96 = call i8* @udl_set_register_16be(i8* %91, i32 27, i32 %95)
  store i8* %96, i8** %3, align 8
  %97 = load i8*, i8** %3, align 8
  ret i8* %97
}

declare dso_local i8* @udl_set_register_lfsr16(i8*, i32, i32) #1

declare dso_local i8* @udl_set_register_16(i8*, i32, i32) #1

declare dso_local i8* @udl_set_register_16be(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
