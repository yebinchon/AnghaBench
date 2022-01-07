; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_i7300_edac.c_i7300_process_fbd_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_i7300_edac.c_i7300_process_fbd_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.i7300_pvt* }
%struct.i7300_pvt = type { i32, i32 }

@FERR_FAT_FBD = common dso_local global i32 0, align 4
@FERR_FAT_FBD_ERR_MASK = common dso_local global i64 0, align 8
@ferr_fat_fbd_name = common dso_local global i32 0, align 4
@NRECMEMA = common dso_local global i32 0, align 4
@NRECMEMB = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Bank=%d RAS=%d CAS=%d Err=0x%lx (%s))\00", align 1
@HW_EVENT_ERR_FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"Write error\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Read error\00", align 1
@FERR_NF_FBD = common dso_local global i32 0, align 4
@FERR_NF_FBD_ERR_MASK = common dso_local global i64 0, align 8
@ferr_nf_fbd_name = common dso_local global i32 0, align 4
@REDMEMA = common dso_local global i32 0, align 4
@RECMEMA = common dso_local global i32 0, align 4
@RECMEMB = common dso_local global i32 0, align 4
@REDMEMB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"DRAM-Bank=%d RAS=%d CAS=%d, Err=0x%lx (%s))\00", align 1
@HW_EVENT_ERR_CORRECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*)* @i7300_process_fbd_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i7300_process_fbd_error(%struct.mem_ctl_info* %0) #0 {
  %2 = alloca %struct.mem_ctl_info*, align 8
  %3 = alloca %struct.i7300_pvt*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %2, align 8
  %18 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %19 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %18, i32 0, i32 0
  %20 = load %struct.i7300_pvt*, %struct.i7300_pvt** %19, align 8
  store %struct.i7300_pvt* %20, %struct.i7300_pvt** %3, align 8
  %21 = load %struct.i7300_pvt*, %struct.i7300_pvt** %3, align 8
  %22 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @FERR_FAT_FBD, align 4
  %25 = call i32 @pci_read_config_dword(i32 %23, i32 %24, i64* %6)
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* @FERR_FAT_FBD_ERR_MASK, align 8
  %28 = and i64 %26, %27
  %29 = call i64 @unlikely(i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %94

31:                                               ; preds = %1
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* @FERR_FAT_FBD_ERR_MASK, align 8
  %34 = and i64 %32, %33
  store i64 %34, i64* %15, align 8
  %35 = load i32, i32* @ferr_fat_fbd_name, align 4
  %36 = call i32 @ARRAY_SIZE(i32 %35)
  %37 = call i64 @find_first_bit(i64* %15, i32 %36)
  store i64 %37, i64* %4, align 8
  %38 = load i32, i32* @ferr_fat_fbd_name, align 4
  %39 = load i64, i64* %4, align 8
  %40 = call i8* @GET_ERR_FROM_TABLE(i32 %38, i64 %39)
  store i8* %40, i8** %16, align 8
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @GET_FBD_FAT_IDX(i64 %41)
  %43 = icmp eq i32 %42, 2
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 1, i32 0
  store i32 %45, i32* %8, align 4
  %46 = load %struct.i7300_pvt*, %struct.i7300_pvt** %3, align 8
  %47 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @NRECMEMA, align 4
  %50 = call i32 @pci_read_config_word(i32 %48, i32 %49, i32* %7)
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @NRECMEMA_BANK(i32 %51)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @NRECMEMA_RANK(i32 %53)
  store i32 %54, i32* %11, align 4
  %55 = load %struct.i7300_pvt*, %struct.i7300_pvt** %3, align 8
  %56 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @NRECMEMB, align 4
  %59 = call i32 @pci_read_config_dword(i32 %57, i32 %58, i64* %5)
  %60 = load i64, i64* %5, align 8
  %61 = call i32 @NRECMEMB_IS_WR(i64 %60)
  store i32 %61, i32* %17, align 4
  %62 = load i64, i64* %5, align 8
  %63 = call i32 @NRECMEMB_CAS(i64 %62)
  store i32 %63, i32* %12, align 4
  %64 = load i64, i64* %5, align 8
  %65 = call i32 @NRECMEMB_RAS(i64 %64)
  store i32 %65, i32* %13, align 4
  %66 = load %struct.i7300_pvt*, %struct.i7300_pvt** %3, align 8
  %67 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @FERR_FAT_FBD, align 4
  %70 = load i64, i64* %6, align 8
  %71 = call i32 @pci_write_config_dword(i32 %68, i32 %69, i64 %70)
  %72 = load %struct.i7300_pvt*, %struct.i7300_pvt** %3, align 8
  %73 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @PAGE_SIZE, align 4
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %12, align 4
  %79 = load i64, i64* %15, align 8
  %80 = load i8*, i8** %16, align 8
  %81 = call i32 @snprintf(i32 %74, i32 %75, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %76, i32 %77, i32 %78, i64 %79, i8* %80)
  %82 = load i32, i32* @HW_EVENT_ERR_FATAL, align 4
  %83 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %17, align 4
  %87 = icmp ne i32 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)
  %90 = load %struct.i7300_pvt*, %struct.i7300_pvt** %3, align 8
  %91 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @edac_mc_handle_error(i32 %82, %struct.mem_ctl_info* %83, i32 1, i32 0, i32 0, i64 0, i32 %84, i32 -1, i32 %85, i8* %89, i32 %92)
  br label %94

94:                                               ; preds = %31, %1
  %95 = load %struct.i7300_pvt*, %struct.i7300_pvt** %3, align 8
  %96 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @FERR_NF_FBD, align 4
  %99 = call i32 @pci_read_config_dword(i32 %97, i32 %98, i64* %6)
  %100 = load i64, i64* %6, align 8
  %101 = load i64, i64* @FERR_NF_FBD_ERR_MASK, align 8
  %102 = and i64 %100, %101
  %103 = call i64 @unlikely(i64 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %193

105:                                              ; preds = %94
  %106 = load i64, i64* %6, align 8
  %107 = load i64, i64* @FERR_NF_FBD_ERR_MASK, align 8
  %108 = and i64 %106, %107
  store i64 %108, i64* %15, align 8
  %109 = load i32, i32* @ferr_nf_fbd_name, align 4
  %110 = call i32 @ARRAY_SIZE(i32 %109)
  %111 = call i64 @find_first_bit(i64* %15, i32 %110)
  store i64 %111, i64* %4, align 8
  %112 = load i32, i32* @ferr_nf_fbd_name, align 4
  %113 = load i64, i64* %4, align 8
  %114 = call i8* @GET_ERR_FROM_TABLE(i32 %112, i64 %113)
  store i8* %114, i8** %16, align 8
  %115 = load i64, i64* %6, align 8
  %116 = call i32 @GET_FBD_NF_IDX(i64 %115)
  %117 = icmp eq i32 %116, 2
  %118 = zext i1 %117 to i64
  %119 = select i1 %117, i32 1, i32 0
  store i32 %119, i32* %8, align 4
  %120 = load %struct.i7300_pvt*, %struct.i7300_pvt** %3, align 8
  %121 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @REDMEMA, align 4
  %124 = call i32 @pci_read_config_dword(i32 %122, i32 %123, i64* %14)
  %125 = load %struct.i7300_pvt*, %struct.i7300_pvt** %3, align 8
  %126 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @RECMEMA, align 4
  %129 = call i32 @pci_read_config_word(i32 %127, i32 %128, i32* %7)
  %130 = load i32, i32* %7, align 4
  %131 = call i32 @RECMEMA_BANK(i32 %130)
  store i32 %131, i32* %10, align 4
  %132 = load i32, i32* %7, align 4
  %133 = call i32 @RECMEMA_RANK(i32 %132)
  store i32 %133, i32* %11, align 4
  %134 = load %struct.i7300_pvt*, %struct.i7300_pvt** %3, align 8
  %135 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @RECMEMB, align 4
  %138 = call i32 @pci_read_config_dword(i32 %136, i32 %137, i64* %5)
  %139 = load i64, i64* %5, align 8
  %140 = call i32 @RECMEMB_IS_WR(i64 %139)
  store i32 %140, i32* %17, align 4
  %141 = load i64, i64* %5, align 8
  %142 = call i32 @RECMEMB_CAS(i64 %141)
  store i32 %142, i32* %12, align 4
  %143 = load i64, i64* %5, align 8
  %144 = call i32 @RECMEMB_RAS(i64 %143)
  store i32 %144, i32* %13, align 4
  %145 = load %struct.i7300_pvt*, %struct.i7300_pvt** %3, align 8
  %146 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @REDMEMB, align 4
  %149 = call i32 @pci_read_config_dword(i32 %147, i32 %148, i64* %5)
  %150 = load i32, i32* %8, align 4
  %151 = shl i32 %150, 1
  store i32 %151, i32* %9, align 4
  %152 = load i64, i64* %5, align 8
  %153 = call i64 @BIT(i32 17)
  %154 = and i64 %152, %153
  %155 = icmp ne i64 %154, 0
  %156 = xor i1 %155, true
  %157 = xor i1 %156, true
  %158 = zext i1 %157 to i32
  %159 = load i32, i32* %9, align 4
  %160 = add i32 %159, %158
  store i32 %160, i32* %9, align 4
  %161 = load %struct.i7300_pvt*, %struct.i7300_pvt** %3, align 8
  %162 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @FERR_NF_FBD, align 4
  %165 = load i64, i64* %6, align 8
  %166 = call i32 @pci_write_config_dword(i32 %163, i32 %164, i64 %165)
  %167 = load %struct.i7300_pvt*, %struct.i7300_pvt** %3, align 8
  %168 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @PAGE_SIZE, align 4
  %171 = load i32, i32* %10, align 4
  %172 = load i32, i32* %13, align 4
  %173 = load i32, i32* %12, align 4
  %174 = load i64, i64* %15, align 8
  %175 = load i8*, i8** %16, align 8
  %176 = call i32 @snprintf(i32 %169, i32 %170, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %171, i32 %172, i32 %173, i64 %174, i8* %175)
  %177 = load i32, i32* @HW_EVENT_ERR_CORRECTED, align 4
  %178 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %179 = load i64, i64* %14, align 8
  %180 = load i32, i32* %8, align 4
  %181 = lshr i32 %180, 1
  %182 = load i32, i32* %9, align 4
  %183 = urem i32 %182, 2
  %184 = load i32, i32* %11, align 4
  %185 = load i32, i32* %17, align 4
  %186 = icmp ne i32 %185, 0
  %187 = zext i1 %186 to i64
  %188 = select i1 %186, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)
  %189 = load %struct.i7300_pvt*, %struct.i7300_pvt** %3, align 8
  %190 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @edac_mc_handle_error(i32 %177, %struct.mem_ctl_info* %178, i32 1, i32 0, i32 0, i64 %179, i32 %181, i32 %183, i32 %184, i8* %188, i32 %191)
  br label %193

193:                                              ; preds = %105, %94
  ret void
}

declare dso_local i32 @pci_read_config_dword(i32, i32, i64*) #1

declare dso_local i64 @unlikely(i64) #1

declare dso_local i64 @find_first_bit(i64*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i8* @GET_ERR_FROM_TABLE(i32, i64) #1

declare dso_local i32 @GET_FBD_FAT_IDX(i64) #1

declare dso_local i32 @pci_read_config_word(i32, i32, i32*) #1

declare dso_local i32 @NRECMEMA_BANK(i32) #1

declare dso_local i32 @NRECMEMA_RANK(i32) #1

declare dso_local i32 @NRECMEMB_IS_WR(i64) #1

declare dso_local i32 @NRECMEMB_CAS(i64) #1

declare dso_local i32 @NRECMEMB_RAS(i64) #1

declare dso_local i32 @pci_write_config_dword(i32, i32, i64) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32, i32, i64, i8*) #1

declare dso_local i32 @edac_mc_handle_error(i32, %struct.mem_ctl_info*, i32, i32, i32, i64, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @GET_FBD_NF_IDX(i64) #1

declare dso_local i32 @RECMEMA_BANK(i32) #1

declare dso_local i32 @RECMEMA_RANK(i32) #1

declare dso_local i32 @RECMEMB_IS_WR(i64) #1

declare dso_local i32 @RECMEMB_CAS(i64) #1

declare dso_local i32 @RECMEMB_RAS(i64) #1

declare dso_local i64 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
