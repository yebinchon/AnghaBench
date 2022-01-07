; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/libstub/extr_fdt.c_update_fdt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/libstub/extr_fdt.c_update_fdt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"Device Tree header not valid!\0A\00", align 1
@EFI_LOAD_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Truncated device tree! foo!\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"chosen\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"bootargs\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"linux,initrd-start\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"linux,initrd-end\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"linux,uefi-system-table\00", align 1
@U64_MAX = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [22 x i8] c"linux,uefi-mmap-start\00", align 1
@U32_MAX = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [21 x i8] c"linux,uefi-mmap-size\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"linux,uefi-mmap-desc-size\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"linux,uefi-mmap-desc-ver\00", align 1
@CONFIG_RANDOMIZE_BASE = common dso_local global i32 0, align 4
@EFI_SUCCESS = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [11 x i8] c"kaslr-seed\00", align 1
@EFI_NOT_FOUND = common dso_local global i64 0, align 8
@FDT_ERR_NOSPACE = common dso_local global i32 0, align 4
@EFI_BUFFER_TOO_SMALL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i8*, i64, i8*, i32, i8*, i64, i64)* @update_fdt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @update_fdt(i32* %0, i8* %1, i64 %2, i8* %3, i32 %4, i8* %5, i64 %6, i64 %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  store i32* %0, i32** %10, align 8
  store i8* %1, i8** %11, align 8
  store i64 %2, i64* %12, align 8
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i8* %5, i8** %15, align 8
  store i64 %6, i64* %16, align 8
  store i64 %7, i64* %17, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %49

28:                                               ; preds = %8
  %29 = load i8*, i8** %11, align 8
  %30 = call i64 @fdt_check_header(i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32*, i32** %10, align 8
  %34 = call i32 @pr_efi_err(i32* %33, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %35 = load i64, i64* @EFI_LOAD_ERROR, align 8
  store i64 %35, i64* %9, align 8
  br label %229

36:                                               ; preds = %28
  %37 = load i64, i64* %12, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %36
  %40 = load i8*, i8** %11, align 8
  %41 = call i64 @fdt_totalsize(i8* %40)
  %42 = load i64, i64* %12, align 8
  %43 = icmp ugt i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i32*, i32** %10, align 8
  %46 = call i32 @pr_efi_err(i32* %45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i64, i64* @EFI_LOAD_ERROR, align 8
  store i64 %47, i64* %9, align 8
  br label %229

48:                                               ; preds = %39, %36
  br label %49

49:                                               ; preds = %48, %8
  %50 = load i8*, i8** %11, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = load i8*, i8** %11, align 8
  %54 = load i8*, i8** %13, align 8
  %55 = load i32, i32* %14, align 4
  %56 = call i32 @fdt_open_into(i8* %53, i8* %54, i32 %55)
  store i32 %56, i32* %20, align 4
  br label %68

57:                                               ; preds = %49
  %58 = load i8*, i8** %13, align 8
  %59 = load i32, i32* %14, align 4
  %60 = call i32 @fdt_create_empty_tree(i8* %58, i32 %59)
  store i32 %60, i32* %20, align 4
  %61 = load i32, i32* %20, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load i32*, i32** %10, align 8
  %65 = load i8*, i8** %13, align 8
  %66 = call i32 @fdt_update_cell_size(i32* %64, i8* %65)
  br label %67

67:                                               ; preds = %63, %57
  br label %68

68:                                               ; preds = %67, %52
  %69 = load i32, i32* %20, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  br label %220

72:                                               ; preds = %68
  %73 = load i8*, i8** %13, align 8
  %74 = call i32 @fdt_num_mem_rsv(i8* %73)
  store i32 %74, i32* %19, align 4
  br label %75

75:                                               ; preds = %79, %72
  %76 = load i32, i32* %19, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %19, align 4
  %78 = icmp sgt i32 %76, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load i8*, i8** %13, align 8
  %81 = load i32, i32* %19, align 4
  %82 = call i32 @fdt_del_mem_rsv(i8* %80, i32 %81)
  br label %75

83:                                               ; preds = %75
  %84 = load i8*, i8** %13, align 8
  %85 = call i32 @fdt_subnode_offset(i8* %84, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i32 %85, i32* %18, align 4
  %86 = load i32, i32* %18, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %83
  %89 = load i8*, i8** %13, align 8
  %90 = call i32 @fdt_add_subnode(i8* %89, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i32 %90, i32* %18, align 4
  %91 = load i32, i32* %18, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %88
  %94 = load i32, i32* %18, align 4
  store i32 %94, i32* %20, align 4
  br label %220

95:                                               ; preds = %88
  br label %96

96:                                               ; preds = %95, %83
  %97 = load i8*, i8** %15, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %115

99:                                               ; preds = %96
  %100 = load i8*, i8** %15, align 8
  %101 = call i64 @strlen(i8* %100)
  %102 = icmp sgt i64 %101, 0
  br i1 %102, label %103, label %115

103:                                              ; preds = %99
  %104 = load i8*, i8** %13, align 8
  %105 = load i32, i32* %18, align 4
  %106 = load i8*, i8** %15, align 8
  %107 = load i8*, i8** %15, align 8
  %108 = call i64 @strlen(i8* %107)
  %109 = add nsw i64 %108, 1
  %110 = call i32 @fdt_setprop(i8* %104, i32 %105, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %106, i64 %109)
  store i32 %110, i32* %20, align 4
  %111 = load i32, i32* %20, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %103
  br label %220

114:                                              ; preds = %103
  br label %115

115:                                              ; preds = %114, %99, %96
  %116 = load i64, i64* %17, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %141

118:                                              ; preds = %115
  %119 = load i64, i64* %16, align 8
  %120 = call i64 @cpu_to_fdt64(i64 %119)
  store i64 %120, i64* %24, align 8
  %121 = load i8*, i8** %13, align 8
  %122 = load i32, i32* %18, align 4
  %123 = load i64, i64* %24, align 8
  %124 = call i32 @fdt_setprop_var(i8* %121, i32 %122, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i64 %123)
  store i32 %124, i32* %20, align 4
  %125 = load i32, i32* %20, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %118
  br label %220

128:                                              ; preds = %118
  %129 = load i64, i64* %16, align 8
  %130 = load i64, i64* %17, align 8
  %131 = add nsw i64 %129, %130
  %132 = call i64 @cpu_to_fdt64(i64 %131)
  store i64 %132, i64* %23, align 8
  %133 = load i8*, i8** %13, align 8
  %134 = load i32, i32* %18, align 4
  %135 = load i64, i64* %23, align 8
  %136 = call i32 @fdt_setprop_var(i8* %133, i32 %134, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i64 %135)
  store i32 %136, i32* %20, align 4
  %137 = load i32, i32* %20, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %128
  br label %220

140:                                              ; preds = %128
  br label %141

141:                                              ; preds = %140, %115
  %142 = load i8*, i8** %13, align 8
  %143 = call i32 @fdt_subnode_offset(i8* %142, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i32 %143, i32* %18, align 4
  %144 = load i32*, i32** %10, align 8
  %145 = ptrtoint i32* %144 to i64
  %146 = call i64 @cpu_to_fdt64(i64 %145)
  store i64 %146, i64* %22, align 8
  %147 = load i8*, i8** %13, align 8
  %148 = load i32, i32* %18, align 4
  %149 = load i64, i64* %22, align 8
  %150 = call i32 @fdt_setprop_var(i8* %147, i32 %148, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i64 %149)
  store i32 %150, i32* %20, align 4
  %151 = load i32, i32* %20, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %141
  br label %220

154:                                              ; preds = %141
  %155 = load i64, i64* @U64_MAX, align 8
  store i64 %155, i64* %22, align 8
  %156 = load i8*, i8** %13, align 8
  %157 = load i32, i32* %18, align 4
  %158 = load i64, i64* %22, align 8
  %159 = call i32 @fdt_setprop_var(i8* %156, i32 %157, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i64 %158)
  store i32 %159, i32* %20, align 4
  %160 = load i32, i32* %20, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %154
  br label %220

163:                                              ; preds = %154
  %164 = load i64, i64* @U32_MAX, align 8
  store i64 %164, i64* %21, align 8
  %165 = load i8*, i8** %13, align 8
  %166 = load i32, i32* %18, align 4
  %167 = load i64, i64* %21, align 8
  %168 = call i32 @fdt_setprop_var(i8* %165, i32 %166, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i64 %167)
  store i32 %168, i32* %20, align 4
  %169 = load i32, i32* %20, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %163
  br label %220

172:                                              ; preds = %163
  %173 = load i8*, i8** %13, align 8
  %174 = load i32, i32* %18, align 4
  %175 = load i64, i64* %21, align 8
  %176 = call i32 @fdt_setprop_var(i8* %173, i32 %174, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i64 %175)
  store i32 %176, i32* %20, align 4
  %177 = load i32, i32* %20, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %172
  br label %220

180:                                              ; preds = %172
  %181 = load i8*, i8** %13, align 8
  %182 = load i32, i32* %18, align 4
  %183 = load i64, i64* %21, align 8
  %184 = call i32 @fdt_setprop_var(i8* %181, i32 %182, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i64 %183)
  store i32 %184, i32* %20, align 4
  %185 = load i32, i32* %20, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %180
  br label %220

188:                                              ; preds = %180
  %189 = load i32, i32* @CONFIG_RANDOMIZE_BASE, align 4
  %190 = call i64 @IS_ENABLED(i32 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %216

192:                                              ; preds = %188
  %193 = load i32*, i32** %10, align 8
  %194 = bitcast i64* %22 to i32*
  %195 = call i64 @efi_get_random_bytes(i32* %193, i32 8, i32* %194)
  store i64 %195, i64* %25, align 8
  %196 = load i64, i64* %25, align 8
  %197 = load i64, i64* @EFI_SUCCESS, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %208

199:                                              ; preds = %192
  %200 = load i8*, i8** %13, align 8
  %201 = load i32, i32* %18, align 4
  %202 = load i64, i64* %22, align 8
  %203 = call i32 @fdt_setprop_var(i8* %200, i32 %201, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i64 %202)
  store i32 %203, i32* %20, align 4
  %204 = load i32, i32* %20, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %199
  br label %220

207:                                              ; preds = %199
  br label %215

208:                                              ; preds = %192
  %209 = load i64, i64* %25, align 8
  %210 = load i64, i64* @EFI_NOT_FOUND, align 8
  %211 = icmp ne i64 %209, %210
  br i1 %211, label %212, label %214

212:                                              ; preds = %208
  %213 = load i64, i64* %25, align 8
  store i64 %213, i64* %9, align 8
  br label %229

214:                                              ; preds = %208
  br label %215

215:                                              ; preds = %214, %207
  br label %216

216:                                              ; preds = %215, %188
  %217 = load i8*, i8** %13, align 8
  %218 = call i32 @fdt_pack(i8* %217)
  %219 = load i64, i64* @EFI_SUCCESS, align 8
  store i64 %219, i64* %9, align 8
  br label %229

220:                                              ; preds = %206, %187, %179, %171, %162, %153, %139, %127, %113, %93, %71
  %221 = load i32, i32* %20, align 4
  %222 = load i32, i32* @FDT_ERR_NOSPACE, align 4
  %223 = sub nsw i32 0, %222
  %224 = icmp eq i32 %221, %223
  br i1 %224, label %225, label %227

225:                                              ; preds = %220
  %226 = load i64, i64* @EFI_BUFFER_TOO_SMALL, align 8
  store i64 %226, i64* %9, align 8
  br label %229

227:                                              ; preds = %220
  %228 = load i64, i64* @EFI_LOAD_ERROR, align 8
  store i64 %228, i64* %9, align 8
  br label %229

229:                                              ; preds = %227, %225, %216, %212, %44, %32
  %230 = load i64, i64* %9, align 8
  ret i64 %230
}

declare dso_local i64 @fdt_check_header(i8*) #1

declare dso_local i32 @pr_efi_err(i32*, i8*) #1

declare dso_local i64 @fdt_totalsize(i8*) #1

declare dso_local i32 @fdt_open_into(i8*, i8*, i32) #1

declare dso_local i32 @fdt_create_empty_tree(i8*, i32) #1

declare dso_local i32 @fdt_update_cell_size(i32*, i8*) #1

declare dso_local i32 @fdt_num_mem_rsv(i8*) #1

declare dso_local i32 @fdt_del_mem_rsv(i8*, i32) #1

declare dso_local i32 @fdt_subnode_offset(i8*, i32, i8*) #1

declare dso_local i32 @fdt_add_subnode(i8*, i32, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @fdt_setprop(i8*, i32, i8*, i8*, i64) #1

declare dso_local i64 @cpu_to_fdt64(i64) #1

declare dso_local i32 @fdt_setprop_var(i8*, i32, i8*, i64) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i64 @efi_get_random_bytes(i32*, i32, i32*) #1

declare dso_local i32 @fdt_pack(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
