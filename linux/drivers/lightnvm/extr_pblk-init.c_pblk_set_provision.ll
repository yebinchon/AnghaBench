; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-init.c_pblk_set_provision.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-init.c_pblk_set_provision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i64, i32, i32, i32, i32, %struct.TYPE_2__, %struct.pblk_line_meta, %struct.pblk_line_mgmt, %struct.nvm_tgt_dev* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.pblk_line_meta = type { i32, i32* }
%struct.pblk_line_mgmt = type { i32 }
%struct.nvm_tgt_dev = type { %struct.nvm_geo }
%struct.nvm_geo = type { i64, i32 }

@NVM_TARGET_DEFAULT_OP = common dso_local global i64 0, align 8
@PBLK_DEFAULT_OP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"OP too small to create a sane instance\0A\00", align 1
@EINTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Default OP insufficient, adjusting OP to %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pblk*, i32)* @pblk_set_provision to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pblk_set_provision(%struct.pblk* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pblk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvm_tgt_dev*, align 8
  %7 = alloca %struct.pblk_line_mgmt*, align 8
  %8 = alloca %struct.pblk_line_meta*, align 8
  %9 = alloca %struct.nvm_geo*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.pblk* %0, %struct.pblk** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.pblk*, %struct.pblk** %4, align 8
  %16 = getelementptr inbounds %struct.pblk, %struct.pblk* %15, i32 0, i32 8
  %17 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %16, align 8
  store %struct.nvm_tgt_dev* %17, %struct.nvm_tgt_dev** %6, align 8
  %18 = load %struct.pblk*, %struct.pblk** %4, align 8
  %19 = getelementptr inbounds %struct.pblk, %struct.pblk* %18, i32 0, i32 7
  store %struct.pblk_line_mgmt* %19, %struct.pblk_line_mgmt** %7, align 8
  %20 = load %struct.pblk*, %struct.pblk** %4, align 8
  %21 = getelementptr inbounds %struct.pblk, %struct.pblk* %20, i32 0, i32 6
  store %struct.pblk_line_meta* %21, %struct.pblk_line_meta** %8, align 8
  %22 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %6, align 8
  %23 = getelementptr inbounds %struct.nvm_tgt_dev, %struct.nvm_tgt_dev* %22, i32 0, i32 0
  store %struct.nvm_geo* %23, %struct.nvm_geo** %9, align 8
  %24 = load %struct.nvm_geo*, %struct.nvm_geo** %9, align 8
  %25 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @NVM_TARGET_DEFAULT_OP, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %2
  %30 = load i64, i64* @PBLK_DEFAULT_OP, align 8
  %31 = load %struct.pblk*, %struct.pblk** %4, align 8
  %32 = getelementptr inbounds %struct.pblk, %struct.pblk* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  br label %39

33:                                               ; preds = %2
  %34 = load %struct.nvm_geo*, %struct.nvm_geo** %9, align 8
  %35 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.pblk*, %struct.pblk** %4, align 8
  %38 = getelementptr inbounds %struct.pblk, %struct.pblk* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  br label %39

39:                                               ; preds = %33, %29
  %40 = load %struct.pblk*, %struct.pblk** %4, align 8
  %41 = call i32 @pblk_get_min_chks(%struct.pblk* %40)
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %10, align 4
  %43 = load %struct.pblk*, %struct.pblk** %4, align 8
  %44 = getelementptr inbounds %struct.pblk, %struct.pblk* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = sub nsw i64 100, %45
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = mul nsw i64 %48, %46
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @sector_div(i32 %51, i32 100)
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %10, align 4
  %55 = sub nsw i32 %53, %54
  %56 = load i32, i32* %14, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %86

58:                                               ; preds = %39
  %59 = load %struct.nvm_geo*, %struct.nvm_geo** %9, align 8
  %60 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @NVM_TARGET_DEFAULT_OP, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %58
  %65 = load %struct.pblk*, %struct.pblk** %4, align 8
  %66 = call i32 @pblk_err(%struct.pblk* %65, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %67 = load i32, i32* @EINTR, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %142

69:                                               ; preds = %58
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %14, align 4
  %72 = sub nsw i32 %70, %71
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %14, align 4
  %74 = mul nsw i32 100, %73
  %75 = load i32, i32* %5, align 4
  %76 = sdiv i32 %74, %75
  %77 = sext i32 %76 to i64
  %78 = load %struct.pblk*, %struct.pblk** %4, align 8
  %79 = getelementptr inbounds %struct.pblk, %struct.pblk* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  %80 = load %struct.pblk*, %struct.pblk** %4, align 8
  %81 = load %struct.pblk*, %struct.pblk** %4, align 8
  %82 = getelementptr inbounds %struct.pblk, %struct.pblk* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = trunc i64 %83 to i32
  %85 = call i32 @pblk_info(%struct.pblk* %80, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %69, %39
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* %10, align 4
  %89 = sub nsw i32 %87, %88
  %90 = load %struct.pblk*, %struct.pblk** %4, align 8
  %91 = getelementptr inbounds %struct.pblk, %struct.pblk* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 8
  %92 = load i32, i32* %5, align 4
  %93 = load %struct.pblk*, %struct.pblk** %4, align 8
  %94 = getelementptr inbounds %struct.pblk, %struct.pblk* %93, i32 0, i32 5
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  store i32 %92, i32* %95, align 8
  %96 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %8, align 8
  %97 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %8, align 8
  %100 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %98, %103
  %105 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %7, align 8
  %106 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = mul nsw i32 %104, %107
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %11, align 4
  %110 = load %struct.nvm_geo*, %struct.nvm_geo** %9, align 8
  %111 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @DIV_ROUND_UP(i32 %109, i32 %112)
  store i32 %113, i32* %12, align 4
  %114 = load %struct.nvm_geo*, %struct.nvm_geo** %9, align 8
  %115 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.pblk*, %struct.pblk** %4, align 8
  %118 = getelementptr inbounds %struct.pblk, %struct.pblk* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = sdiv i32 %116, %119
  %121 = load %struct.pblk*, %struct.pblk** %4, align 8
  %122 = getelementptr inbounds %struct.pblk, %struct.pblk* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = mul nsw i32 %120, %123
  store i32 %124, i32* %13, align 4
  %125 = load i32, i32* %10, align 4
  %126 = load i32, i32* %12, align 4
  %127 = sub nsw i32 %125, %126
  %128 = load i32, i32* %13, align 4
  %129 = mul nsw i32 %127, %128
  %130 = load %struct.pblk*, %struct.pblk** %4, align 8
  %131 = getelementptr inbounds %struct.pblk, %struct.pblk* %130, i32 0, i32 4
  store i32 %129, i32* %131, align 4
  %132 = load %struct.pblk*, %struct.pblk** %4, align 8
  %133 = getelementptr inbounds %struct.pblk, %struct.pblk* %132, i32 0, i32 5
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 2
  %135 = load i32, i32* %5, align 4
  %136 = call i32 @atomic_set(i32* %134, i32 %135)
  %137 = load %struct.pblk*, %struct.pblk** %4, align 8
  %138 = getelementptr inbounds %struct.pblk, %struct.pblk* %137, i32 0, i32 5
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 1
  %140 = load i32, i32* %5, align 4
  %141 = call i32 @atomic_set(i32* %139, i32 %140)
  store i32 0, i32* %3, align 4
  br label %142

142:                                              ; preds = %86, %64
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local i32 @pblk_get_min_chks(%struct.pblk*) #1

declare dso_local i32 @sector_div(i32, i32) #1

declare dso_local i32 @pblk_err(%struct.pblk*, i8*) #1

declare dso_local i32 @pblk_info(%struct.pblk*, i8*, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
