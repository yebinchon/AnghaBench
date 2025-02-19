; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_melfas_mip4.c_mip4_parse_fw_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_melfas_mip4.c_mip4_parse_fw_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mip4_fw_version = type { i8*, i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.mip4_fw_version*)* @mip4_parse_fw_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mip4_parse_fw_version(i32* %0, %struct.mip4_fw_version* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.mip4_fw_version*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.mip4_fw_version* %1, %struct.mip4_fw_version** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 0
  %7 = call i8* @get_unaligned_le16(i32* %6)
  %8 = load %struct.mip4_fw_version*, %struct.mip4_fw_version** %4, align 8
  %9 = getelementptr inbounds %struct.mip4_fw_version, %struct.mip4_fw_version* %8, i32 0, i32 3
  store i8* %7, i8** %9, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 2
  %12 = call i8* @get_unaligned_le16(i32* %11)
  %13 = load %struct.mip4_fw_version*, %struct.mip4_fw_version** %4, align 8
  %14 = getelementptr inbounds %struct.mip4_fw_version, %struct.mip4_fw_version* %13, i32 0, i32 2
  store i8* %12, i8** %14, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 4
  %17 = call i8* @get_unaligned_le16(i32* %16)
  %18 = load %struct.mip4_fw_version*, %struct.mip4_fw_version** %4, align 8
  %19 = getelementptr inbounds %struct.mip4_fw_version, %struct.mip4_fw_version* %18, i32 0, i32 1
  store i8* %17, i8** %19, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 6
  %22 = call i8* @get_unaligned_le16(i32* %21)
  %23 = load %struct.mip4_fw_version*, %struct.mip4_fw_version** %4, align 8
  %24 = getelementptr inbounds %struct.mip4_fw_version, %struct.mip4_fw_version* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  ret void
}

declare dso_local i8* @get_unaligned_le16(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
