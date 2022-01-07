; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_edid_vendor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_edid_vendor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edid = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.edid*, i8*)* @edid_vendor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @edid_vendor(%struct.edid* %0, i8* %1) #0 {
  %3 = alloca %struct.edid*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [3 x i8], align 1
  store %struct.edid* %0, %struct.edid** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.edid*, %struct.edid** %3, align 8
  %7 = getelementptr inbounds %struct.edid, %struct.edid* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, 124
  %12 = ashr i32 %11, 2
  %13 = add nsw i32 %12, 64
  %14 = trunc i32 %13 to i8
  %15 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 0
  store i8 %14, i8* %15, align 1
  %16 = load %struct.edid*, %struct.edid** %3, align 8
  %17 = getelementptr inbounds %struct.edid, %struct.edid* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 3
  %22 = shl i32 %21, 3
  %23 = load %struct.edid*, %struct.edid** %3, align 8
  %24 = getelementptr inbounds %struct.edid, %struct.edid* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 224
  %29 = ashr i32 %28, 5
  %30 = or i32 %22, %29
  %31 = add nsw i32 %30, 64
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 1
  store i8 %32, i8* %33, align 1
  %34 = load %struct.edid*, %struct.edid** %3, align 8
  %35 = getelementptr inbounds %struct.edid, %struct.edid* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 31
  %40 = add nsw i32 %39, 64
  %41 = trunc i32 %40 to i8
  %42 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 2
  store i8 %41, i8* %42, align 1
  %43 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 0
  %44 = load i8*, i8** %4, align 8
  %45 = call i32 @strncmp(i8* %43, i8* %44, i32 3)
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  ret i32 %48
}

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
