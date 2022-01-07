; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_i7300_edac.c_i7300_get_mc_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_i7300_edac.c_i7300_get_mc_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.i7300_pvt* }
%struct.i7300_pvt = type { i32, i32, i32, i32*, i32, i64, i32 }

@AMBASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"AMBASE= 0x%lx\0A\00", align 1
@TOLM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"TOLM (number of 256M regions) =%u (0x%x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Actual TOLM byte addr=%u.%03u GB (0x%x)\0A\00", align 1
@MC_SETTINGS = common dso_local global i32 0, align 4
@MC_SETTINGS_A = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"Memory controller operating on single mode\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"Memory controller operating on %smirrored mode\0A\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"non-\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Error detection is %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"Retry is %s\0A\00", align 1
@MIR0 = common dso_local global i32 0, align 4
@MIR1 = common dso_local global i32 0, align 4
@MIR2 = common dso_local global i32 0, align 4
@MAX_MIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_ctl_info*)* @i7300_get_mc_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i7300_get_mc_regs(%struct.mem_ctl_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mem_ctl_info*, align 8
  %4 = alloca %struct.i7300_pvt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %3, align 8
  %8 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %9 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %8, i32 0, i32 0
  %10 = load %struct.i7300_pvt*, %struct.i7300_pvt** %9, align 8
  store %struct.i7300_pvt* %10, %struct.i7300_pvt** %4, align 8
  %11 = load %struct.i7300_pvt*, %struct.i7300_pvt** %4, align 8
  %12 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @AMBASE, align 4
  %15 = load %struct.i7300_pvt*, %struct.i7300_pvt** %4, align 8
  %16 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %15, i32 0, i32 5
  %17 = bitcast i64* %16 to i32*
  %18 = call i32 @pci_read_config_dword(i32 %13, i32 %14, i32* %17)
  %19 = load %struct.i7300_pvt*, %struct.i7300_pvt** %4, align 8
  %20 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %19, i32 0, i32 5
  %21 = load i64, i64* %20, align 8
  %22 = call i32 (i32, i8*, ...) @edac_dbg(i32 2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = load %struct.i7300_pvt*, %struct.i7300_pvt** %4, align 8
  %24 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @TOLM, align 4
  %27 = load %struct.i7300_pvt*, %struct.i7300_pvt** %4, align 8
  %28 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %27, i32 0, i32 0
  %29 = call i32 @pci_read_config_word(i32 %25, i32 %26, i32* %28)
  %30 = load %struct.i7300_pvt*, %struct.i7300_pvt** %4, align 8
  %31 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = ashr i32 %32, 12
  store i32 %33, i32* %31, align 8
  %34 = load %struct.i7300_pvt*, %struct.i7300_pvt** %4, align 8
  %35 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.i7300_pvt*, %struct.i7300_pvt** %4, align 8
  %38 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 (i32, i8*, ...) @edac_dbg(i32 2, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %39)
  %41 = load %struct.i7300_pvt*, %struct.i7300_pvt** %4, align 8
  %42 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = mul nsw i64 1000, %44
  %46 = ashr i64 %45, 2
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = sdiv i32 %48, 1000
  %50 = load i32, i32* %5, align 4
  %51 = srem i32 %50, 1000
  %52 = load %struct.i7300_pvt*, %struct.i7300_pvt** %4, align 8
  %53 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = shl i32 %54, 28
  %56 = call i32 (i32, i8*, ...) @edac_dbg(i32 2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %49, i32 %51, i32 %55)
  %57 = load %struct.i7300_pvt*, %struct.i7300_pvt** %4, align 8
  %58 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @MC_SETTINGS, align 4
  %61 = load %struct.i7300_pvt*, %struct.i7300_pvt** %4, align 8
  %62 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %61, i32 0, i32 1
  %63 = call i32 @pci_read_config_dword(i32 %59, i32 %60, i32* %62)
  %64 = load %struct.i7300_pvt*, %struct.i7300_pvt** %4, align 8
  %65 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @MC_SETTINGS_A, align 4
  %68 = load %struct.i7300_pvt*, %struct.i7300_pvt** %4, align 8
  %69 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %68, i32 0, i32 2
  %70 = call i32 @pci_read_config_dword(i32 %66, i32 %67, i32* %69)
  %71 = load %struct.i7300_pvt*, %struct.i7300_pvt** %4, align 8
  %72 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @IS_SINGLE_MODE(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %1
  %77 = call i32 (i32, i8*, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  br label %87

78:                                               ; preds = %1
  %79 = load %struct.i7300_pvt*, %struct.i7300_pvt** %4, align 8
  %80 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @IS_MIRRORED(i32 %81)
  %83 = icmp ne i64 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)
  %86 = call i32 (i32, i8*, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i8* %85)
  br label %87

87:                                               ; preds = %78, %76
  %88 = load %struct.i7300_pvt*, %struct.i7300_pvt** %4, align 8
  %89 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @IS_ECC_ENABLED(i32 %90)
  %92 = icmp ne i64 %91, 0
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0)
  %95 = call i32 (i32, i8*, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i8* %94)
  %96 = load %struct.i7300_pvt*, %struct.i7300_pvt** %4, align 8
  %97 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @IS_RETRY_ENABLED(i32 %98)
  %100 = icmp ne i64 %99, 0
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0)
  %103 = call i32 (i32, i8*, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i8* %102)
  %104 = load %struct.i7300_pvt*, %struct.i7300_pvt** %4, align 8
  %105 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @MIR0, align 4
  %108 = load %struct.i7300_pvt*, %struct.i7300_pvt** %4, align 8
  %109 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %108, i32 0, i32 3
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  %112 = call i32 @pci_read_config_word(i32 %106, i32 %107, i32* %111)
  %113 = load %struct.i7300_pvt*, %struct.i7300_pvt** %4, align 8
  %114 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @MIR1, align 4
  %117 = load %struct.i7300_pvt*, %struct.i7300_pvt** %4, align 8
  %118 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %117, i32 0, i32 3
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 1
  %121 = call i32 @pci_read_config_word(i32 %115, i32 %116, i32* %120)
  %122 = load %struct.i7300_pvt*, %struct.i7300_pvt** %4, align 8
  %123 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @MIR2, align 4
  %126 = load %struct.i7300_pvt*, %struct.i7300_pvt** %4, align 8
  %127 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %126, i32 0, i32 3
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 2
  %130 = call i32 @pci_read_config_word(i32 %124, i32 %125, i32* %129)
  store i32 0, i32* %6, align 4
  br label %131

131:                                              ; preds = %141, %87
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* @MAX_MIR, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %144

135:                                              ; preds = %131
  %136 = load i32, i32* %6, align 4
  %137 = load %struct.i7300_pvt*, %struct.i7300_pvt** %4, align 8
  %138 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %137, i32 0, i32 3
  %139 = load i32*, i32** %138, align 8
  %140 = call i32 @decode_mir(i32 %136, i32* %139)
  br label %141

141:                                              ; preds = %135
  %142 = load i32, i32* %6, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %6, align 4
  br label %131

144:                                              ; preds = %131
  %145 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %146 = call i32 @i7300_init_csrows(%struct.mem_ctl_info* %145)
  store i32 %146, i32* %7, align 4
  %147 = load i32, i32* %7, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %144
  %150 = load i32, i32* %7, align 4
  store i32 %150, i32* %2, align 4
  br label %154

151:                                              ; preds = %144
  %152 = load %struct.i7300_pvt*, %struct.i7300_pvt** %4, align 8
  %153 = call i32 @print_dimm_size(%struct.i7300_pvt* %152)
  store i32 0, i32* %2, align 4
  br label %154

154:                                              ; preds = %151, %149
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

declare dso_local i32 @edac_dbg(i32, i8*, ...) #1

declare dso_local i32 @pci_read_config_word(i32, i32, i32*) #1

declare dso_local i64 @IS_SINGLE_MODE(i32) #1

declare dso_local i64 @IS_MIRRORED(i32) #1

declare dso_local i64 @IS_ECC_ENABLED(i32) #1

declare dso_local i64 @IS_RETRY_ENABLED(i32) #1

declare dso_local i32 @decode_mir(i32, i32*) #1

declare dso_local i32 @i7300_init_csrows(%struct.mem_ctl_info*) #1

declare dso_local i32 @print_dimm_size(%struct.i7300_pvt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
