; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_e752x_edac.c_e752x_get_error_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_e752x_edac.c_e752x_get_error_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i64 }
%struct.e752x_error_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64 }
%struct.pci_dev = type { i32 }
%struct.e752x_pvt = type { %struct.pci_dev*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@E752X_FERR_GLOBAL = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_INTEL_3100_1_ERR = common dso_local global i64 0, align 8
@I3100_NSI_FERR = common dso_local global i32 0, align 4
@E752X_HI_FERR = common dso_local global i32 0, align 4
@E752X_SYSBUS_FERR = common dso_local global i32 0, align 4
@E752X_BUF_FERR = common dso_local global i32 0, align 4
@E752X_DRAM_FERR = common dso_local global i32 0, align 4
@E752X_DRAM_SEC1_ADD = common dso_local global i32 0, align 4
@E752X_DRAM_SEC1_SYNDROME = common dso_local global i32 0, align 4
@E752X_DRAM_DED_ADD = common dso_local global i32 0, align 4
@E752X_DRAM_SCRB_ADD = common dso_local global i32 0, align 4
@E752X_DRAM_RETR_ADD = common dso_local global i32 0, align 4
@NSI_ERR_MASK = common dso_local global i32 0, align 4
@E752X_NERR_GLOBAL = common dso_local global i32 0, align 4
@I3100_NSI_NERR = common dso_local global i32 0, align 4
@E752X_HI_NERR = common dso_local global i32 0, align 4
@E752X_SYSBUS_NERR = common dso_local global i32 0, align 4
@E752X_BUF_NERR = common dso_local global i32 0, align 4
@E752X_DRAM_NERR = common dso_local global i32 0, align 4
@E752X_DRAM_SEC2_ADD = common dso_local global i32 0, align 4
@E752X_DRAM_SEC2_SYNDROME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*, %struct.e752x_error_info*)* @e752x_get_error_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e752x_get_error_info(%struct.mem_ctl_info* %0, %struct.e752x_error_info* %1) #0 {
  %3 = alloca %struct.mem_ctl_info*, align 8
  %4 = alloca %struct.e752x_error_info*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.e752x_pvt*, align 8
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %3, align 8
  store %struct.e752x_error_info* %1, %struct.e752x_error_info** %4, align 8
  %7 = load %struct.e752x_error_info*, %struct.e752x_error_info** %4, align 8
  %8 = call i32 @memset(%struct.e752x_error_info* %7, i32 0, i32 104)
  %9 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %10 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.e752x_pvt*
  store %struct.e752x_pvt* %12, %struct.e752x_pvt** %6, align 8
  %13 = load %struct.e752x_pvt*, %struct.e752x_pvt** %6, align 8
  %14 = getelementptr inbounds %struct.e752x_pvt, %struct.e752x_pvt* %13, i32 0, i32 0
  %15 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  store %struct.pci_dev* %15, %struct.pci_dev** %5, align 8
  %16 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %17 = load i32, i32* @E752X_FERR_GLOBAL, align 4
  %18 = load %struct.e752x_error_info*, %struct.e752x_error_info** %4, align 8
  %19 = getelementptr inbounds %struct.e752x_error_info, %struct.e752x_error_info* %18, i32 0, i32 0
  %20 = call i32 @pci_read_config_dword(%struct.pci_dev* %16, i32 %17, i32* %19)
  %21 = load %struct.e752x_error_info*, %struct.e752x_error_info** %4, align 8
  %22 = getelementptr inbounds %struct.e752x_error_info, %struct.e752x_error_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %165

25:                                               ; preds = %2
  %26 = load %struct.e752x_pvt*, %struct.e752x_pvt** %6, align 8
  %27 = getelementptr inbounds %struct.e752x_pvt, %struct.e752x_pvt* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @PCI_DEVICE_ID_INTEL_3100_1_ERR, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %25
  %34 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %35 = load i32, i32* @I3100_NSI_FERR, align 4
  %36 = load %struct.e752x_error_info*, %struct.e752x_error_info** %4, align 8
  %37 = getelementptr inbounds %struct.e752x_error_info, %struct.e752x_error_info* %36, i32 0, i32 1
  %38 = call i32 @pci_read_config_dword(%struct.pci_dev* %34, i32 %35, i32* %37)
  %39 = load %struct.e752x_error_info*, %struct.e752x_error_info** %4, align 8
  %40 = getelementptr inbounds %struct.e752x_error_info, %struct.e752x_error_info* %39, i32 0, i32 2
  store i32 0, i32* %40, align 8
  br label %49

41:                                               ; preds = %25
  %42 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %43 = load i32, i32* @E752X_HI_FERR, align 4
  %44 = load %struct.e752x_error_info*, %struct.e752x_error_info** %4, align 8
  %45 = getelementptr inbounds %struct.e752x_error_info, %struct.e752x_error_info* %44, i32 0, i32 2
  %46 = call i32 @pci_read_config_byte(%struct.pci_dev* %42, i32 %43, i32* %45)
  %47 = load %struct.e752x_error_info*, %struct.e752x_error_info** %4, align 8
  %48 = getelementptr inbounds %struct.e752x_error_info, %struct.e752x_error_info* %47, i32 0, i32 1
  store i32 0, i32* %48, align 4
  br label %49

49:                                               ; preds = %41, %33
  %50 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %51 = load i32, i32* @E752X_SYSBUS_FERR, align 4
  %52 = load %struct.e752x_error_info*, %struct.e752x_error_info** %4, align 8
  %53 = getelementptr inbounds %struct.e752x_error_info, %struct.e752x_error_info* %52, i32 0, i32 17
  %54 = call i32 @pci_read_config_word(%struct.pci_dev* %50, i32 %51, i64* %53)
  %55 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %56 = load i32, i32* @E752X_BUF_FERR, align 4
  %57 = load %struct.e752x_error_info*, %struct.e752x_error_info** %4, align 8
  %58 = getelementptr inbounds %struct.e752x_error_info, %struct.e752x_error_info* %57, i32 0, i32 3
  %59 = call i32 @pci_read_config_byte(%struct.pci_dev* %55, i32 %56, i32* %58)
  %60 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %61 = load i32, i32* @E752X_DRAM_FERR, align 4
  %62 = load %struct.e752x_error_info*, %struct.e752x_error_info** %4, align 8
  %63 = getelementptr inbounds %struct.e752x_error_info, %struct.e752x_error_info* %62, i32 0, i32 16
  %64 = call i32 @pci_read_config_word(%struct.pci_dev* %60, i32 %61, i64* %63)
  %65 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %66 = load i32, i32* @E752X_DRAM_SEC1_ADD, align 4
  %67 = load %struct.e752x_error_info*, %struct.e752x_error_info** %4, align 8
  %68 = getelementptr inbounds %struct.e752x_error_info, %struct.e752x_error_info* %67, i32 0, i32 4
  %69 = call i32 @pci_read_config_dword(%struct.pci_dev* %65, i32 %66, i32* %68)
  %70 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %71 = load i32, i32* @E752X_DRAM_SEC1_SYNDROME, align 4
  %72 = load %struct.e752x_error_info*, %struct.e752x_error_info** %4, align 8
  %73 = getelementptr inbounds %struct.e752x_error_info, %struct.e752x_error_info* %72, i32 0, i32 18
  %74 = call i32 @pci_read_config_word(%struct.pci_dev* %70, i32 %71, i64* %73)
  %75 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %76 = load i32, i32* @E752X_DRAM_DED_ADD, align 4
  %77 = load %struct.e752x_error_info*, %struct.e752x_error_info** %4, align 8
  %78 = getelementptr inbounds %struct.e752x_error_info, %struct.e752x_error_info* %77, i32 0, i32 5
  %79 = call i32 @pci_read_config_dword(%struct.pci_dev* %75, i32 %76, i32* %78)
  %80 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %81 = load i32, i32* @E752X_DRAM_SCRB_ADD, align 4
  %82 = load %struct.e752x_error_info*, %struct.e752x_error_info** %4, align 8
  %83 = getelementptr inbounds %struct.e752x_error_info, %struct.e752x_error_info* %82, i32 0, i32 6
  %84 = call i32 @pci_read_config_dword(%struct.pci_dev* %80, i32 %81, i32* %83)
  %85 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %86 = load i32, i32* @E752X_DRAM_RETR_ADD, align 4
  %87 = load %struct.e752x_error_info*, %struct.e752x_error_info** %4, align 8
  %88 = getelementptr inbounds %struct.e752x_error_info, %struct.e752x_error_info* %87, i32 0, i32 7
  %89 = call i32 @pci_read_config_dword(%struct.pci_dev* %85, i32 %86, i32* %88)
  %90 = load %struct.e752x_error_info*, %struct.e752x_error_info** %4, align 8
  %91 = getelementptr inbounds %struct.e752x_error_info, %struct.e752x_error_info* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = and i32 %92, 127
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %49
  %96 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %97 = load i32, i32* @E752X_HI_FERR, align 4
  %98 = load %struct.e752x_error_info*, %struct.e752x_error_info** %4, align 8
  %99 = getelementptr inbounds %struct.e752x_error_info, %struct.e752x_error_info* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @pci_write_config_byte(%struct.pci_dev* %96, i32 %97, i32 %100)
  br label %102

102:                                              ; preds = %95, %49
  %103 = load %struct.e752x_error_info*, %struct.e752x_error_info** %4, align 8
  %104 = getelementptr inbounds %struct.e752x_error_info, %struct.e752x_error_info* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @NSI_ERR_MASK, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %102
  %110 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %111 = load i32, i32* @I3100_NSI_FERR, align 4
  %112 = load %struct.e752x_error_info*, %struct.e752x_error_info** %4, align 8
  %113 = getelementptr inbounds %struct.e752x_error_info, %struct.e752x_error_info* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @pci_write_config_dword(%struct.pci_dev* %110, i32 %111, i32 %114)
  br label %116

116:                                              ; preds = %109, %102
  %117 = load %struct.e752x_error_info*, %struct.e752x_error_info** %4, align 8
  %118 = getelementptr inbounds %struct.e752x_error_info, %struct.e752x_error_info* %117, i32 0, i32 17
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %116
  %122 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %123 = load i32, i32* @E752X_SYSBUS_FERR, align 4
  %124 = load %struct.e752x_error_info*, %struct.e752x_error_info** %4, align 8
  %125 = getelementptr inbounds %struct.e752x_error_info, %struct.e752x_error_info* %124, i32 0, i32 17
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @pci_write_config_word(%struct.pci_dev* %122, i32 %123, i64 %126)
  br label %128

128:                                              ; preds = %121, %116
  %129 = load %struct.e752x_error_info*, %struct.e752x_error_info** %4, align 8
  %130 = getelementptr inbounds %struct.e752x_error_info, %struct.e752x_error_info* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = and i32 %131, 15
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %128
  %135 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %136 = load i32, i32* @E752X_BUF_FERR, align 4
  %137 = load %struct.e752x_error_info*, %struct.e752x_error_info** %4, align 8
  %138 = getelementptr inbounds %struct.e752x_error_info, %struct.e752x_error_info* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @pci_write_config_byte(%struct.pci_dev* %135, i32 %136, i32 %139)
  br label %141

141:                                              ; preds = %134, %128
  %142 = load %struct.e752x_error_info*, %struct.e752x_error_info** %4, align 8
  %143 = getelementptr inbounds %struct.e752x_error_info, %struct.e752x_error_info* %142, i32 0, i32 16
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %158

146:                                              ; preds = %141
  %147 = load %struct.e752x_pvt*, %struct.e752x_pvt** %6, align 8
  %148 = getelementptr inbounds %struct.e752x_pvt, %struct.e752x_pvt* %147, i32 0, i32 0
  %149 = load %struct.pci_dev*, %struct.pci_dev** %148, align 8
  %150 = load i32, i32* @E752X_DRAM_FERR, align 4
  %151 = load %struct.e752x_error_info*, %struct.e752x_error_info** %4, align 8
  %152 = getelementptr inbounds %struct.e752x_error_info, %struct.e752x_error_info* %151, i32 0, i32 16
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.e752x_error_info*, %struct.e752x_error_info** %4, align 8
  %155 = getelementptr inbounds %struct.e752x_error_info, %struct.e752x_error_info* %154, i32 0, i32 16
  %156 = load i64, i64* %155, align 8
  %157 = call i32 @pci_write_bits16(%struct.pci_dev* %149, i32 %150, i64 %153, i64 %156)
  br label %158

158:                                              ; preds = %146, %141
  %159 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %160 = load i32, i32* @E752X_FERR_GLOBAL, align 4
  %161 = load %struct.e752x_error_info*, %struct.e752x_error_info** %4, align 8
  %162 = getelementptr inbounds %struct.e752x_error_info, %struct.e752x_error_info* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @pci_write_config_dword(%struct.pci_dev* %159, i32 %160, i32 %163)
  br label %165

165:                                              ; preds = %158, %2
  %166 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %167 = load i32, i32* @E752X_NERR_GLOBAL, align 4
  %168 = load %struct.e752x_error_info*, %struct.e752x_error_info** %4, align 8
  %169 = getelementptr inbounds %struct.e752x_error_info, %struct.e752x_error_info* %168, i32 0, i32 8
  %170 = call i32 @pci_read_config_dword(%struct.pci_dev* %166, i32 %167, i32* %169)
  %171 = load %struct.e752x_error_info*, %struct.e752x_error_info** %4, align 8
  %172 = getelementptr inbounds %struct.e752x_error_info, %struct.e752x_error_info* %171, i32 0, i32 8
  %173 = load i32, i32* %172, align 8
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %300

175:                                              ; preds = %165
  %176 = load %struct.e752x_pvt*, %struct.e752x_pvt** %6, align 8
  %177 = getelementptr inbounds %struct.e752x_pvt, %struct.e752x_pvt* %176, i32 0, i32 1
  %178 = load %struct.TYPE_2__*, %struct.TYPE_2__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @PCI_DEVICE_ID_INTEL_3100_1_ERR, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %191

183:                                              ; preds = %175
  %184 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %185 = load i32, i32* @I3100_NSI_NERR, align 4
  %186 = load %struct.e752x_error_info*, %struct.e752x_error_info** %4, align 8
  %187 = getelementptr inbounds %struct.e752x_error_info, %struct.e752x_error_info* %186, i32 0, i32 9
  %188 = call i32 @pci_read_config_dword(%struct.pci_dev* %184, i32 %185, i32* %187)
  %189 = load %struct.e752x_error_info*, %struct.e752x_error_info** %4, align 8
  %190 = getelementptr inbounds %struct.e752x_error_info, %struct.e752x_error_info* %189, i32 0, i32 10
  store i32 0, i32* %190, align 8
  br label %199

191:                                              ; preds = %175
  %192 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %193 = load i32, i32* @E752X_HI_NERR, align 4
  %194 = load %struct.e752x_error_info*, %struct.e752x_error_info** %4, align 8
  %195 = getelementptr inbounds %struct.e752x_error_info, %struct.e752x_error_info* %194, i32 0, i32 10
  %196 = call i32 @pci_read_config_byte(%struct.pci_dev* %192, i32 %193, i32* %195)
  %197 = load %struct.e752x_error_info*, %struct.e752x_error_info** %4, align 8
  %198 = getelementptr inbounds %struct.e752x_error_info, %struct.e752x_error_info* %197, i32 0, i32 9
  store i32 0, i32* %198, align 4
  br label %199

199:                                              ; preds = %191, %183
  %200 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %201 = load i32, i32* @E752X_SYSBUS_NERR, align 4
  %202 = load %struct.e752x_error_info*, %struct.e752x_error_info** %4, align 8
  %203 = getelementptr inbounds %struct.e752x_error_info, %struct.e752x_error_info* %202, i32 0, i32 14
  %204 = call i32 @pci_read_config_word(%struct.pci_dev* %200, i32 %201, i64* %203)
  %205 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %206 = load i32, i32* @E752X_BUF_NERR, align 4
  %207 = load %struct.e752x_error_info*, %struct.e752x_error_info** %4, align 8
  %208 = getelementptr inbounds %struct.e752x_error_info, %struct.e752x_error_info* %207, i32 0, i32 11
  %209 = call i32 @pci_read_config_byte(%struct.pci_dev* %205, i32 %206, i32* %208)
  %210 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %211 = load i32, i32* @E752X_DRAM_NERR, align 4
  %212 = load %struct.e752x_error_info*, %struct.e752x_error_info** %4, align 8
  %213 = getelementptr inbounds %struct.e752x_error_info, %struct.e752x_error_info* %212, i32 0, i32 13
  %214 = call i32 @pci_read_config_word(%struct.pci_dev* %210, i32 %211, i64* %213)
  %215 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %216 = load i32, i32* @E752X_DRAM_SEC2_ADD, align 4
  %217 = load %struct.e752x_error_info*, %struct.e752x_error_info** %4, align 8
  %218 = getelementptr inbounds %struct.e752x_error_info, %struct.e752x_error_info* %217, i32 0, i32 12
  %219 = call i32 @pci_read_config_dword(%struct.pci_dev* %215, i32 %216, i32* %218)
  %220 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %221 = load i32, i32* @E752X_DRAM_SEC2_SYNDROME, align 4
  %222 = load %struct.e752x_error_info*, %struct.e752x_error_info** %4, align 8
  %223 = getelementptr inbounds %struct.e752x_error_info, %struct.e752x_error_info* %222, i32 0, i32 15
  %224 = call i32 @pci_read_config_word(%struct.pci_dev* %220, i32 %221, i64* %223)
  %225 = load %struct.e752x_error_info*, %struct.e752x_error_info** %4, align 8
  %226 = getelementptr inbounds %struct.e752x_error_info, %struct.e752x_error_info* %225, i32 0, i32 10
  %227 = load i32, i32* %226, align 8
  %228 = and i32 %227, 127
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %237

230:                                              ; preds = %199
  %231 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %232 = load i32, i32* @E752X_HI_NERR, align 4
  %233 = load %struct.e752x_error_info*, %struct.e752x_error_info** %4, align 8
  %234 = getelementptr inbounds %struct.e752x_error_info, %struct.e752x_error_info* %233, i32 0, i32 10
  %235 = load i32, i32* %234, align 8
  %236 = call i32 @pci_write_config_byte(%struct.pci_dev* %231, i32 %232, i32 %235)
  br label %237

237:                                              ; preds = %230, %199
  %238 = load %struct.e752x_error_info*, %struct.e752x_error_info** %4, align 8
  %239 = getelementptr inbounds %struct.e752x_error_info, %struct.e752x_error_info* %238, i32 0, i32 9
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* @NSI_ERR_MASK, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %251

244:                                              ; preds = %237
  %245 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %246 = load i32, i32* @I3100_NSI_NERR, align 4
  %247 = load %struct.e752x_error_info*, %struct.e752x_error_info** %4, align 8
  %248 = getelementptr inbounds %struct.e752x_error_info, %struct.e752x_error_info* %247, i32 0, i32 9
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @pci_write_config_dword(%struct.pci_dev* %245, i32 %246, i32 %249)
  br label %251

251:                                              ; preds = %244, %237
  %252 = load %struct.e752x_error_info*, %struct.e752x_error_info** %4, align 8
  %253 = getelementptr inbounds %struct.e752x_error_info, %struct.e752x_error_info* %252, i32 0, i32 14
  %254 = load i64, i64* %253, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %263

256:                                              ; preds = %251
  %257 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %258 = load i32, i32* @E752X_SYSBUS_NERR, align 4
  %259 = load %struct.e752x_error_info*, %struct.e752x_error_info** %4, align 8
  %260 = getelementptr inbounds %struct.e752x_error_info, %struct.e752x_error_info* %259, i32 0, i32 14
  %261 = load i64, i64* %260, align 8
  %262 = call i32 @pci_write_config_word(%struct.pci_dev* %257, i32 %258, i64 %261)
  br label %263

263:                                              ; preds = %256, %251
  %264 = load %struct.e752x_error_info*, %struct.e752x_error_info** %4, align 8
  %265 = getelementptr inbounds %struct.e752x_error_info, %struct.e752x_error_info* %264, i32 0, i32 11
  %266 = load i32, i32* %265, align 4
  %267 = and i32 %266, 15
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %276

269:                                              ; preds = %263
  %270 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %271 = load i32, i32* @E752X_BUF_NERR, align 4
  %272 = load %struct.e752x_error_info*, %struct.e752x_error_info** %4, align 8
  %273 = getelementptr inbounds %struct.e752x_error_info, %struct.e752x_error_info* %272, i32 0, i32 11
  %274 = load i32, i32* %273, align 4
  %275 = call i32 @pci_write_config_byte(%struct.pci_dev* %270, i32 %271, i32 %274)
  br label %276

276:                                              ; preds = %269, %263
  %277 = load %struct.e752x_error_info*, %struct.e752x_error_info** %4, align 8
  %278 = getelementptr inbounds %struct.e752x_error_info, %struct.e752x_error_info* %277, i32 0, i32 13
  %279 = load i64, i64* %278, align 8
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %293

281:                                              ; preds = %276
  %282 = load %struct.e752x_pvt*, %struct.e752x_pvt** %6, align 8
  %283 = getelementptr inbounds %struct.e752x_pvt, %struct.e752x_pvt* %282, i32 0, i32 0
  %284 = load %struct.pci_dev*, %struct.pci_dev** %283, align 8
  %285 = load i32, i32* @E752X_DRAM_NERR, align 4
  %286 = load %struct.e752x_error_info*, %struct.e752x_error_info** %4, align 8
  %287 = getelementptr inbounds %struct.e752x_error_info, %struct.e752x_error_info* %286, i32 0, i32 13
  %288 = load i64, i64* %287, align 8
  %289 = load %struct.e752x_error_info*, %struct.e752x_error_info** %4, align 8
  %290 = getelementptr inbounds %struct.e752x_error_info, %struct.e752x_error_info* %289, i32 0, i32 13
  %291 = load i64, i64* %290, align 8
  %292 = call i32 @pci_write_bits16(%struct.pci_dev* %284, i32 %285, i64 %288, i64 %291)
  br label %293

293:                                              ; preds = %281, %276
  %294 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %295 = load i32, i32* @E752X_NERR_GLOBAL, align 4
  %296 = load %struct.e752x_error_info*, %struct.e752x_error_info** %4, align 8
  %297 = getelementptr inbounds %struct.e752x_error_info, %struct.e752x_error_info* %296, i32 0, i32 8
  %298 = load i32, i32* %297, align 8
  %299 = call i32 @pci_write_config_dword(%struct.pci_dev* %294, i32 %295, i32 %298)
  br label %300

300:                                              ; preds = %293, %165
  ret void
}

declare dso_local i32 @memset(%struct.e752x_error_info*, i32, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i64*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i64) #1

declare dso_local i32 @pci_write_bits16(%struct.pci_dev*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
