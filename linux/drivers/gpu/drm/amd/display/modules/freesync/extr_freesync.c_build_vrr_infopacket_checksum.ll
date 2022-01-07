; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/freesync/extr_freesync.c_build_vrr_infopacket_checksum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/freesync/extr_freesync.c_build_vrr_infopacket_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_info_packet = type { i8*, i32, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.dc_info_packet*)* @build_vrr_infopacket_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_vrr_infopacket_checksum(i32* %0, %struct.dc_info_packet* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.dc_info_packet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store i32* %0, i32** %3, align 8
  store %struct.dc_info_packet* %1, %struct.dc_info_packet** %4, align 8
  store i32 0, i32* %5, align 4
  store i8 0, i8* %6, align 1
  %7 = load %struct.dc_info_packet*, %struct.dc_info_packet** %4, align 8
  %8 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %7, i32 0, i32 5
  %9 = load i64, i64* %8, align 8
  %10 = load i8, i8* %6, align 1
  %11 = zext i8 %10 to i64
  %12 = add nsw i64 %11, %9
  %13 = trunc i64 %12 to i8
  store i8 %13, i8* %6, align 1
  %14 = load %struct.dc_info_packet*, %struct.dc_info_packet** %4, align 8
  %15 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = load i8, i8* %6, align 1
  %18 = zext i8 %17 to i64
  %19 = add nsw i64 %18, %16
  %20 = trunc i64 %19 to i8
  store i8 %20, i8* %6, align 1
  %21 = load %struct.dc_info_packet*, %struct.dc_info_packet** %4, align 8
  %22 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = load i8, i8* %6, align 1
  %25 = zext i8 %24 to i64
  %26 = add nsw i64 %25, %23
  %27 = trunc i64 %26 to i8
  store i8 %27, i8* %6, align 1
  %28 = load %struct.dc_info_packet*, %struct.dc_info_packet** %4, align 8
  %29 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i8, i8* %6, align 1
  %32 = zext i8 %31 to i64
  %33 = add nsw i64 %32, %30
  %34 = trunc i64 %33 to i8
  store i8 %34, i8* %6, align 1
  store i32 1, i32* %5, align 4
  br label %35

35:                                               ; preds = %53, %2
  %36 = load i32, i32* %5, align 4
  %37 = load i32*, i32** %3, align 8
  %38 = load i32, i32* %37, align 4
  %39 = icmp ule i32 %36, %38
  br i1 %39, label %40, label %56

40:                                               ; preds = %35
  %41 = load %struct.dc_info_packet*, %struct.dc_info_packet** %4, align 8
  %42 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = load i8, i8* %6, align 1
  %50 = zext i8 %49 to i32
  %51 = add nsw i32 %50, %48
  %52 = trunc i32 %51 to i8
  store i8 %52, i8* %6, align 1
  br label %53

53:                                               ; preds = %40
  %54 = load i32, i32* %5, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %35

56:                                               ; preds = %35
  %57 = load i8, i8* %6, align 1
  %58 = zext i8 %57 to i32
  %59 = sub nsw i32 256, %58
  %60 = trunc i32 %59 to i8
  %61 = load %struct.dc_info_packet*, %struct.dc_info_packet** %4, align 8
  %62 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 0
  store i8 %60, i8* %64, align 1
  %65 = load %struct.dc_info_packet*, %struct.dc_info_packet** %4, align 8
  %66 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %65, i32 0, i32 1
  store i32 1, i32* %66, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
