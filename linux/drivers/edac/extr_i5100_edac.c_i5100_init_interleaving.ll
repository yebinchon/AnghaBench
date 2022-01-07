; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_i5100_edac.c_i5100_init_interleaving.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_i5100_edac.c_i5100_init_interleaving.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.mem_ctl_info = type { %struct.i5100_priv* }
%struct.i5100_priv = type { i32, %struct.TYPE_4__**, i8**, %struct.TYPE_3__*, %struct.pci_dev*, %struct.pci_dev* }
%struct.TYPE_4__ = type { i32, i32* }
%struct.TYPE_3__ = type { i32, i8** }

@I5100_TOLM = common dso_local global i32 0, align 4
@I5100_MIR0 = common dso_local global i32 0, align 4
@I5100_MIR1 = common dso_local global i32 0, align 4
@I5100_AMIR_0 = common dso_local global i32 0, align 4
@I5100_AMIR_1 = common dso_local global i32 0, align 4
@I5100_CHANNELS = common dso_local global i32 0, align 4
@I5100_DMIR = common dso_local global i64 0, align 8
@I5100_MAX_RANKS_PER_DIMM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, %struct.mem_ctl_info*)* @i5100_init_interleaving to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i5100_init_interleaving(%struct.pci_dev* %0, %struct.mem_ctl_info* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.mem_ctl_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i5100_priv*, align 8
  %8 = alloca [2 x %struct.pci_dev*], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.mem_ctl_info* %1, %struct.mem_ctl_info** %4, align 8
  %12 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %13 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %12, i32 0, i32 0
  %14 = load %struct.i5100_priv*, %struct.i5100_priv** %13, align 8
  store %struct.i5100_priv* %14, %struct.i5100_priv** %7, align 8
  %15 = getelementptr inbounds [2 x %struct.pci_dev*], [2 x %struct.pci_dev*]* %8, i64 0, i64 0
  %16 = load %struct.i5100_priv*, %struct.i5100_priv** %7, align 8
  %17 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %16, i32 0, i32 5
  %18 = load %struct.pci_dev*, %struct.pci_dev** %17, align 8
  store %struct.pci_dev* %18, %struct.pci_dev** %15, align 8
  %19 = getelementptr inbounds %struct.pci_dev*, %struct.pci_dev** %15, i64 1
  %20 = load %struct.i5100_priv*, %struct.i5100_priv** %7, align 8
  %21 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %20, i32 0, i32 4
  %22 = load %struct.pci_dev*, %struct.pci_dev** %21, align 8
  store %struct.pci_dev* %22, %struct.pci_dev** %19, align 8
  %23 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %24 = load i32, i32* @I5100_TOLM, align 4
  %25 = call i32 @pci_read_config_word(%struct.pci_dev* %23, i32 %24, i8** %5)
  %26 = load i8*, i8** %5, align 8
  %27 = call i64 @i5100_tolm_tolm(i8* %26)
  %28 = trunc i64 %27 to i32
  %29 = mul nsw i32 %28, 256
  %30 = mul nsw i32 %29, 1024
  %31 = mul nsw i32 %30, 1024
  %32 = load %struct.i5100_priv*, %struct.i5100_priv** %7, align 8
  %33 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %35 = load i32, i32* @I5100_MIR0, align 4
  %36 = call i32 @pci_read_config_word(%struct.pci_dev* %34, i32 %35, i8** %5)
  %37 = load i8*, i8** %5, align 8
  %38 = call i64 @i5100_mir_limit(i8* %37)
  %39 = trunc i64 %38 to i32
  %40 = shl i32 %39, 28
  %41 = load %struct.i5100_priv*, %struct.i5100_priv** %7, align 8
  %42 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %41, i32 0, i32 3
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i32 %40, i32* %45, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = call i8* @i5100_mir_way1(i8* %46)
  %48 = load %struct.i5100_priv*, %struct.i5100_priv** %7, align 8
  %49 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %48, i32 0, i32 3
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i8**, i8*** %52, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 1
  store i8* %47, i8** %54, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = call i8* @i5100_mir_way0(i8* %55)
  %57 = load %struct.i5100_priv*, %struct.i5100_priv** %7, align 8
  %58 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %57, i32 0, i32 3
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i64 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i8**, i8*** %61, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 0
  store i8* %56, i8** %63, align 8
  %64 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %65 = load i32, i32* @I5100_MIR1, align 4
  %66 = call i32 @pci_read_config_word(%struct.pci_dev* %64, i32 %65, i8** %5)
  %67 = load i8*, i8** %5, align 8
  %68 = call i64 @i5100_mir_limit(i8* %67)
  %69 = trunc i64 %68 to i32
  %70 = shl i32 %69, 28
  %71 = load %struct.i5100_priv*, %struct.i5100_priv** %7, align 8
  %72 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %71, i32 0, i32 3
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i64 1
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  store i32 %70, i32* %75, align 8
  %76 = load i8*, i8** %5, align 8
  %77 = call i8* @i5100_mir_way1(i8* %76)
  %78 = load %struct.i5100_priv*, %struct.i5100_priv** %7, align 8
  %79 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %78, i32 0, i32 3
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i64 1
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load i8**, i8*** %82, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i64 1
  store i8* %77, i8** %84, align 8
  %85 = load i8*, i8** %5, align 8
  %86 = call i8* @i5100_mir_way0(i8* %85)
  %87 = load %struct.i5100_priv*, %struct.i5100_priv** %7, align 8
  %88 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %87, i32 0, i32 3
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i64 1
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  %92 = load i8**, i8*** %91, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i64 0
  store i8* %86, i8** %93, align 8
  %94 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %95 = load i32, i32* @I5100_AMIR_0, align 4
  %96 = call i32 @pci_read_config_word(%struct.pci_dev* %94, i32 %95, i8** %5)
  %97 = load i8*, i8** %5, align 8
  %98 = load %struct.i5100_priv*, %struct.i5100_priv** %7, align 8
  %99 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %98, i32 0, i32 2
  %100 = load i8**, i8*** %99, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i64 0
  store i8* %97, i8** %101, align 8
  %102 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %103 = load i32, i32* @I5100_AMIR_1, align 4
  %104 = call i32 @pci_read_config_word(%struct.pci_dev* %102, i32 %103, i8** %5)
  %105 = load i8*, i8** %5, align 8
  %106 = load %struct.i5100_priv*, %struct.i5100_priv** %7, align 8
  %107 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %106, i32 0, i32 2
  %108 = load i8**, i8*** %107, align 8
  %109 = getelementptr inbounds i8*, i8** %108, i64 1
  store i8* %105, i8** %109, align 8
  store i32 0, i32* %9, align 4
  br label %110

110:                                              ; preds = %175, %2
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* @I5100_CHANNELS, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %178

114:                                              ; preds = %110
  store i32 0, i32* %10, align 4
  br label %115

115:                                              ; preds = %171, %114
  %116 = load i32, i32* %10, align 4
  %117 = icmp slt i32 %116, 5
  br i1 %117, label %118, label %174

118:                                              ; preds = %115
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [2 x %struct.pci_dev*], [2 x %struct.pci_dev*]* %8, i64 0, i64 %120
  %122 = load %struct.pci_dev*, %struct.pci_dev** %121, align 8
  %123 = load i64, i64* @I5100_DMIR, align 8
  %124 = load i32, i32* %10, align 4
  %125 = mul nsw i32 %124, 4
  %126 = sext i32 %125 to i64
  %127 = add nsw i64 %123, %126
  %128 = call i32 @pci_read_config_dword(%struct.pci_dev* %122, i64 %127, i32* %6)
  %129 = load i32, i32* %6, align 4
  %130 = call i64 @i5100_dmir_limit(i32 %129)
  %131 = trunc i64 %130 to i32
  %132 = shl i32 %131, 28
  %133 = load %struct.i5100_priv*, %struct.i5100_priv** %7, align 8
  %134 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %133, i32 0, i32 1
  %135 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %134, align 8
  %136 = load i32, i32* %9, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %135, i64 %137
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = load i32, i32* %10, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  store i32 %132, i32* %143, align 8
  store i32 0, i32* %11, align 4
  br label %144

144:                                              ; preds = %167, %118
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* @I5100_MAX_RANKS_PER_DIMM, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %170

148:                                              ; preds = %144
  %149 = load i32, i32* %6, align 4
  %150 = load i32, i32* %11, align 4
  %151 = call i32 @i5100_dmir_rank(i32 %149, i32 %150)
  %152 = load %struct.i5100_priv*, %struct.i5100_priv** %7, align 8
  %153 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %152, i32 0, i32 1
  %154 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %153, align 8
  %155 = load i32, i32* %9, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %154, i64 %156
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %157, align 8
  %159 = load i32, i32* %10, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 1
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %11, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  store i32 %151, i32* %166, align 4
  br label %167

167:                                              ; preds = %148
  %168 = load i32, i32* %11, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %11, align 4
  br label %144

170:                                              ; preds = %144
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %10, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %10, align 4
  br label %115

174:                                              ; preds = %115
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %9, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %9, align 4
  br label %110

178:                                              ; preds = %110
  %179 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %180 = call i32 @i5100_init_mtr(%struct.mem_ctl_info* %179)
  ret void
}

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i8**) #1

declare dso_local i64 @i5100_tolm_tolm(i8*) #1

declare dso_local i64 @i5100_mir_limit(i8*) #1

declare dso_local i8* @i5100_mir_way1(i8*) #1

declare dso_local i8* @i5100_mir_way0(i8*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i64, i32*) #1

declare dso_local i64 @i5100_dmir_limit(i32) #1

declare dso_local i32 @i5100_dmir_rank(i32, i32) #1

declare dso_local i32 @i5100_init_mtr(%struct.mem_ctl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
