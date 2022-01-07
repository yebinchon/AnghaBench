; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_i5100_edac.c_i5100_init_mtr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_i5100_edac.c_i5100_init_mtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.i5100_priv* }
%struct.i5100_priv = type { %struct.TYPE_2__**, %struct.pci_dev*, %struct.pci_dev* }
%struct.TYPE_2__ = type { i32, i64, i64, i64, i32, i32 }
%struct.pci_dev = type { i32 }

@I5100_CHANNELS = common dso_local global i32 0, align 4
@I5100_MAX_RANKS_PER_CHAN = common dso_local global i32 0, align 4
@I5100_MTR_0 = common dso_local global i32 0, align 4
@I5100_MTR_4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*)* @i5100_init_mtr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i5100_init_mtr(%struct.mem_ctl_info* %0) #0 {
  %2 = alloca %struct.mem_ctl_info*, align 8
  %3 = alloca %struct.i5100_priv*, align 8
  %4 = alloca [2 x %struct.pci_dev*], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %2, align 8
  %10 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %11 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %10, i32 0, i32 0
  %12 = load %struct.i5100_priv*, %struct.i5100_priv** %11, align 8
  store %struct.i5100_priv* %12, %struct.i5100_priv** %3, align 8
  %13 = getelementptr inbounds [2 x %struct.pci_dev*], [2 x %struct.pci_dev*]* %4, i64 0, i64 0
  %14 = load %struct.i5100_priv*, %struct.i5100_priv** %3, align 8
  %15 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %14, i32 0, i32 2
  %16 = load %struct.pci_dev*, %struct.pci_dev** %15, align 8
  store %struct.pci_dev* %16, %struct.pci_dev** %13, align 8
  %17 = getelementptr inbounds %struct.pci_dev*, %struct.pci_dev** %13, i64 1
  %18 = load %struct.i5100_priv*, %struct.i5100_priv** %3, align 8
  %19 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %18, i32 0, i32 1
  %20 = load %struct.pci_dev*, %struct.pci_dev** %19, align 8
  store %struct.pci_dev* %20, %struct.pci_dev** %17, align 8
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %140, %1
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @I5100_CHANNELS, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %143

25:                                               ; preds = %21
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [2 x %struct.pci_dev*], [2 x %struct.pci_dev*]* %4, i64 0, i64 %27
  %29 = load %struct.pci_dev*, %struct.pci_dev** %28, align 8
  store %struct.pci_dev* %29, %struct.pci_dev** %7, align 8
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %136, %25
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @I5100_MAX_RANKS_PER_CHAN, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %139

34:                                               ; preds = %30
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 4
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load i32, i32* @I5100_MTR_0, align 4
  %39 = load i32, i32* %6, align 4
  %40 = mul nsw i32 %39, 2
  %41 = add nsw i32 %38, %40
  br label %48

42:                                               ; preds = %34
  %43 = load i32, i32* @I5100_MTR_4, align 4
  %44 = load i32, i32* %6, align 4
  %45 = sub nsw i32 %44, 4
  %46 = mul nsw i32 %45, 2
  %47 = add nsw i32 %43, %46
  br label %48

48:                                               ; preds = %42, %37
  %49 = phi i32 [ %41, %37 ], [ %47, %42 ]
  store i32 %49, i32* %8, align 4
  %50 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @pci_read_config_word(%struct.pci_dev* %50, i32 %51, i32* %9)
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @i5100_mtr_present(i32 %53)
  %55 = load %struct.i5100_priv*, %struct.i5100_priv** %3, align 8
  %56 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %57, i64 %59
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 5
  store i32 %54, i32* %65, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @i5100_mtr_ethrottle(i32 %66)
  %68 = load %struct.i5100_priv*, %struct.i5100_priv** %3, align 8
  %69 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %70, i64 %72
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 4
  store i32 %67, i32* %78, align 8
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @i5100_mtr_width(i32 %79)
  %81 = mul nsw i32 4, %80
  %82 = add nsw i32 4, %81
  %83 = load %struct.i5100_priv*, %struct.i5100_priv** %3, align 8
  %84 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %83, i32 0, i32 0
  %85 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %85, i64 %87
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  store i32 %82, i32* %93, align 8
  %94 = load i32, i32* %9, align 4
  %95 = call i64 @i5100_mtr_numbank(i32 %94)
  %96 = add nsw i64 2, %95
  %97 = load %struct.i5100_priv*, %struct.i5100_priv** %3, align 8
  %98 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %97, i32 0, i32 0
  %99 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %98, align 8
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %99, i64 %101
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 3
  store i64 %96, i64* %107, align 8
  %108 = load i32, i32* %9, align 4
  %109 = call i64 @i5100_mtr_numrow(i32 %108)
  %110 = add nsw i64 13, %109
  %111 = load %struct.i5100_priv*, %struct.i5100_priv** %3, align 8
  %112 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %111, i32 0, i32 0
  %113 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %112, align 8
  %114 = load i32, i32* %5, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %113, i64 %115
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = load i32, i32* %6, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 2
  store i64 %110, i64* %121, align 8
  %122 = load i32, i32* %9, align 4
  %123 = call i64 @i5100_mtr_numcol(i32 %122)
  %124 = add nsw i64 10, %123
  %125 = load %struct.i5100_priv*, %struct.i5100_priv** %3, align 8
  %126 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %125, i32 0, i32 0
  %127 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %126, align 8
  %128 = load i32, i32* %5, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %127, i64 %129
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = load i32, i32* %6, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 1
  store i64 %124, i64* %135, align 8
  br label %136

136:                                              ; preds = %48
  %137 = load i32, i32* %6, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %6, align 4
  br label %30

139:                                              ; preds = %30
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %5, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %5, align 4
  br label %21

143:                                              ; preds = %21
  ret void
}

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @i5100_mtr_present(i32) #1

declare dso_local i32 @i5100_mtr_ethrottle(i32) #1

declare dso_local i32 @i5100_mtr_width(i32) #1

declare dso_local i64 @i5100_mtr_numbank(i32) #1

declare dso_local i64 @i5100_mtr_numrow(i32) #1

declare dso_local i64 @i5100_mtr_numcol(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
