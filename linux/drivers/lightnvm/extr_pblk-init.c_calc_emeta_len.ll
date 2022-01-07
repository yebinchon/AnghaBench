; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-init.c_calc_emeta_len.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-init.c_calc_emeta_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { %struct.nvm_tgt_dev*, %struct.pblk_line_mgmt, %struct.pblk_line_meta }
%struct.nvm_tgt_dev = type { %struct.nvm_geo }
%struct.nvm_geo = type { i32 }
%struct.pblk_line_mgmt = type { i32 }
%struct.pblk_line_meta = type { i32*, i32, i32*, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pblk*)* @calc_emeta_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_emeta_len(%struct.pblk* %0) #0 {
  %2 = alloca %struct.pblk*, align 8
  %3 = alloca %struct.pblk_line_meta*, align 8
  %4 = alloca %struct.pblk_line_mgmt*, align 8
  %5 = alloca %struct.nvm_tgt_dev*, align 8
  %6 = alloca %struct.nvm_geo*, align 8
  store %struct.pblk* %0, %struct.pblk** %2, align 8
  %7 = load %struct.pblk*, %struct.pblk** %2, align 8
  %8 = getelementptr inbounds %struct.pblk, %struct.pblk* %7, i32 0, i32 2
  store %struct.pblk_line_meta* %8, %struct.pblk_line_meta** %3, align 8
  %9 = load %struct.pblk*, %struct.pblk** %2, align 8
  %10 = getelementptr inbounds %struct.pblk, %struct.pblk* %9, i32 0, i32 1
  store %struct.pblk_line_mgmt* %10, %struct.pblk_line_mgmt** %4, align 8
  %11 = load %struct.pblk*, %struct.pblk** %2, align 8
  %12 = getelementptr inbounds %struct.pblk, %struct.pblk* %11, i32 0, i32 0
  %13 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %12, align 8
  store %struct.nvm_tgt_dev* %13, %struct.nvm_tgt_dev** %5, align 8
  %14 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %5, align 8
  %15 = getelementptr inbounds %struct.nvm_tgt_dev, %struct.nvm_tgt_dev* %14, i32 0, i32 0
  store %struct.nvm_geo* %15, %struct.nvm_geo** %6, align 8
  %16 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %3, align 8
  %17 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = add i64 4, %19
  %21 = add i64 %20, 4
  %22 = trunc i64 %21 to i32
  %23 = load %struct.nvm_geo*, %struct.nvm_geo** %6, align 8
  %24 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @DIV_ROUND_UP(i32 %22, i32 %25)
  %27 = ptrtoint i8* %26 to i32
  %28 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %3, align 8
  %29 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  store i32 %27, i32* %31, align 4
  %32 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %3, align 8
  %33 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.nvm_geo*, %struct.nvm_geo** %6, align 8
  %38 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %36, %39
  %41 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %3, align 8
  %42 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  store i32 %40, i32* %44, align 4
  %45 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %3, align 8
  %46 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %3, align 8
  %49 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = sub nsw i32 %47, %52
  %54 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %3, align 8
  %55 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 8
  %56 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %3, align 8
  %57 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = mul i64 %59, 4
  %61 = trunc i64 %60 to i32
  %62 = load %struct.nvm_geo*, %struct.nvm_geo** %6, align 8
  %63 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @DIV_ROUND_UP(i32 %61, i32 %64)
  %66 = ptrtoint i8* %65 to i32
  %67 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %3, align 8
  %68 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 2
  store i32 %66, i32* %70, align 4
  %71 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %3, align 8
  %72 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.nvm_geo*, %struct.nvm_geo** %6, align 8
  %77 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = mul nsw i32 %75, %78
  %80 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %3, align 8
  %81 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 2
  store i32 %79, i32* %83, align 4
  %84 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %4, align 8
  %85 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = mul i64 %87, 4
  %89 = trunc i64 %88 to i32
  %90 = load %struct.nvm_geo*, %struct.nvm_geo** %6, align 8
  %91 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i8* @DIV_ROUND_UP(i32 %89, i32 %92)
  %94 = ptrtoint i8* %93 to i32
  %95 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %3, align 8
  %96 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 3
  store i32 %94, i32* %98, align 4
  %99 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %3, align 8
  %100 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 3
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.nvm_geo*, %struct.nvm_geo** %6, align 8
  %105 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = mul nsw i32 %103, %106
  %108 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %3, align 8
  %109 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 3
  store i32 %107, i32* %111, align 4
  %112 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %4, align 8
  %113 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = sext i32 %114 to i64
  %116 = mul i64 %115, 4
  %117 = trunc i64 %116 to i32
  %118 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %3, align 8
  %119 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %118, i32 0, i32 5
  store i32 %117, i32* %119, align 8
  %120 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %3, align 8
  %121 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %3, align 8
  %126 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %125, i32 0, i32 2
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 2
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %124, %129
  %131 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %3, align 8
  %132 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %131, i32 0, i32 2
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 3
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %130, %135
  ret i32 %136
}

declare dso_local i8* @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
