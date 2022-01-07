; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_xgene_edac.c_xgene_edac_pmd_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_xgene_edac.c_xgene_edac_pmd_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_edac = type { i32*, i32, i32 }
%struct.device_node = type { i32 }
%struct.edac_device_ctl_info = type { i8*, i8*, i32, i32, i32, i32*, %struct.xgene_edac_pmd_ctx* }
%struct.xgene_edac_pmd_ctx = type { i8*, i32, i32, i32, i32, i32, %struct.edac_device_ctl_info*, %struct.xgene_edac* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"pmd-controller\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"no pmd-controller property\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"l2c%d\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"l2c\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"xgene_pmd_err\00", align 1
@EDAC_MOD_STR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"no PMD resource address\0A\00", align 1
@.str.6 = private unnamed_addr constant [55 x i8] c"devm_ioremap_resource failed for PMD resource address\0A\00", align 1
@edac_op_state = common dso_local global i64 0, align 8
@EDAC_OPSTATE_POLL = common dso_local global i64 0, align 8
@xgene_edac_pmd_check = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"edac_device_add_device failed\0A\00", align 1
@EDAC_OPSTATE_INT = common dso_local global i64 0, align 8
@OP_RUNNING_INTERRUPT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [30 x i8] c"X-Gene EDAC PMD%d registered\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgene_edac*, %struct.device_node*, i32)* @xgene_edac_pmd_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_edac_pmd_add(%struct.xgene_edac* %0, %struct.device_node* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xgene_edac*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.edac_device_ctl_info*, align 8
  %9 = alloca %struct.xgene_edac_pmd_ctx*, align 8
  %10 = alloca %struct.resource, align 4
  %11 = alloca [10 x i8], align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.xgene_edac* %0, %struct.xgene_edac** %5, align 8
  store %struct.device_node* %1, %struct.device_node** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.xgene_edac*, %struct.xgene_edac** %5, align 8
  %16 = getelementptr inbounds %struct.xgene_edac, %struct.xgene_edac* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i32 @devres_open_group(i32* %17, i32 (%struct.xgene_edac*, %struct.device_node*, i32)* @xgene_edac_pmd_add, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %192

24:                                               ; preds = %3
  %25 = load %struct.device_node*, %struct.device_node** %6, align 8
  %26 = call i64 @of_property_read_u32(%struct.device_node* %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %12)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load %struct.xgene_edac*, %struct.xgene_edac** %5, align 8
  %30 = getelementptr inbounds %struct.xgene_edac, %struct.xgene_edac* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %13, align 4
  br label %186

35:                                               ; preds = %24
  %36 = load %struct.xgene_edac*, %struct.xgene_edac** %5, align 8
  %37 = getelementptr inbounds %struct.xgene_edac, %struct.xgene_edac* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @regmap_read(i32 %38, i32 0, i32* %14)
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %186

43:                                               ; preds = %35
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @xgene_edac_pmd_available(i32 %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* @ENODEV, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %13, align 4
  br label %186

51:                                               ; preds = %43
  %52 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @snprintf(i8* %52, i32 10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  %55 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %56 = call i32 (...) @edac_device_alloc_index()
  %57 = call %struct.edac_device_ctl_info* @edac_device_alloc_ctl_info(i32 48, i8* %55, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 1, i32 2, i32* null, i32 0, i32 %56)
  store %struct.edac_device_ctl_info* %57, %struct.edac_device_ctl_info** %8, align 8
  %58 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %8, align 8
  %59 = icmp ne %struct.edac_device_ctl_info* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %51
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %13, align 4
  br label %186

63:                                               ; preds = %51
  %64 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %8, align 8
  %65 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %64, i32 0, i32 6
  %66 = load %struct.xgene_edac_pmd_ctx*, %struct.xgene_edac_pmd_ctx** %65, align 8
  store %struct.xgene_edac_pmd_ctx* %66, %struct.xgene_edac_pmd_ctx** %9, align 8
  %67 = load %struct.xgene_edac_pmd_ctx*, %struct.xgene_edac_pmd_ctx** %9, align 8
  %68 = getelementptr inbounds %struct.xgene_edac_pmd_ctx, %struct.xgene_edac_pmd_ctx* %67, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8** %68, align 8
  %69 = load i32, i32* %12, align 4
  %70 = load %struct.xgene_edac_pmd_ctx*, %struct.xgene_edac_pmd_ctx** %9, align 8
  %71 = getelementptr inbounds %struct.xgene_edac_pmd_ctx, %struct.xgene_edac_pmd_ctx* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 8
  %72 = load %struct.xgene_edac*, %struct.xgene_edac** %5, align 8
  %73 = load %struct.xgene_edac_pmd_ctx*, %struct.xgene_edac_pmd_ctx** %9, align 8
  %74 = getelementptr inbounds %struct.xgene_edac_pmd_ctx, %struct.xgene_edac_pmd_ctx* %73, i32 0, i32 7
  store %struct.xgene_edac* %72, %struct.xgene_edac** %74, align 8
  %75 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %8, align 8
  %76 = load %struct.xgene_edac_pmd_ctx*, %struct.xgene_edac_pmd_ctx** %9, align 8
  %77 = getelementptr inbounds %struct.xgene_edac_pmd_ctx, %struct.xgene_edac_pmd_ctx* %76, i32 0, i32 6
  store %struct.edac_device_ctl_info* %75, %struct.edac_device_ctl_info** %77, align 8
  %78 = load %struct.xgene_edac*, %struct.xgene_edac** %5, align 8
  %79 = getelementptr inbounds %struct.xgene_edac, %struct.xgene_edac* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.xgene_edac_pmd_ctx*, %struct.xgene_edac_pmd_ctx** %9, align 8
  %83 = getelementptr inbounds %struct.xgene_edac_pmd_ctx, %struct.xgene_edac_pmd_ctx* %82, i32 0, i32 5
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* %7, align 4
  %85 = load %struct.xgene_edac_pmd_ctx*, %struct.xgene_edac_pmd_ctx** %9, align 8
  %86 = getelementptr inbounds %struct.xgene_edac_pmd_ctx, %struct.xgene_edac_pmd_ctx* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 4
  %87 = load %struct.xgene_edac_pmd_ctx*, %struct.xgene_edac_pmd_ctx** %9, align 8
  %88 = getelementptr inbounds %struct.xgene_edac_pmd_ctx, %struct.xgene_edac_pmd_ctx* %87, i32 0, i32 5
  %89 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %8, align 8
  %90 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %89, i32 0, i32 5
  store i32* %88, i32** %90, align 8
  %91 = load %struct.xgene_edac_pmd_ctx*, %struct.xgene_edac_pmd_ctx** %9, align 8
  %92 = getelementptr inbounds %struct.xgene_edac_pmd_ctx, %struct.xgene_edac_pmd_ctx* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %8, align 8
  %95 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %94, i32 0, i32 0
  store i8* %93, i8** %95, align 8
  %96 = load %struct.xgene_edac_pmd_ctx*, %struct.xgene_edac_pmd_ctx** %9, align 8
  %97 = getelementptr inbounds %struct.xgene_edac_pmd_ctx, %struct.xgene_edac_pmd_ctx* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %8, align 8
  %100 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %99, i32 0, i32 1
  store i8* %98, i8** %100, align 8
  %101 = load i32, i32* @EDAC_MOD_STR, align 4
  %102 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %8, align 8
  %103 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %102, i32 0, i32 4
  store i32 %101, i32* %103, align 8
  %104 = load %struct.device_node*, %struct.device_node** %6, align 8
  %105 = call i32 @of_address_to_resource(%struct.device_node* %104, i32 0, %struct.resource* %10)
  store i32 %105, i32* %13, align 4
  %106 = load i32, i32* %13, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %63
  %109 = load %struct.xgene_edac*, %struct.xgene_edac** %5, align 8
  %110 = getelementptr inbounds %struct.xgene_edac, %struct.xgene_edac* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = call i32 @dev_err(i32* %111, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %183

113:                                              ; preds = %63
  %114 = load %struct.xgene_edac*, %struct.xgene_edac** %5, align 8
  %115 = getelementptr inbounds %struct.xgene_edac, %struct.xgene_edac* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = call i32 @devm_ioremap_resource(i32* %116, %struct.resource* %10)
  %118 = load %struct.xgene_edac_pmd_ctx*, %struct.xgene_edac_pmd_ctx** %9, align 8
  %119 = getelementptr inbounds %struct.xgene_edac_pmd_ctx, %struct.xgene_edac_pmd_ctx* %118, i32 0, i32 4
  store i32 %117, i32* %119, align 4
  %120 = load %struct.xgene_edac_pmd_ctx*, %struct.xgene_edac_pmd_ctx** %9, align 8
  %121 = getelementptr inbounds %struct.xgene_edac_pmd_ctx, %struct.xgene_edac_pmd_ctx* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 4
  %123 = call i64 @IS_ERR(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %113
  %126 = load %struct.xgene_edac*, %struct.xgene_edac** %5, align 8
  %127 = getelementptr inbounds %struct.xgene_edac, %struct.xgene_edac* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = call i32 @dev_err(i32* %128, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i64 0, i64 0))
  %130 = load %struct.xgene_edac_pmd_ctx*, %struct.xgene_edac_pmd_ctx** %9, align 8
  %131 = getelementptr inbounds %struct.xgene_edac_pmd_ctx, %struct.xgene_edac_pmd_ctx* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @PTR_ERR(i32 %132)
  store i32 %133, i32* %13, align 4
  br label %183

134:                                              ; preds = %113
  %135 = load i64, i64* @edac_op_state, align 8
  %136 = load i64, i64* @EDAC_OPSTATE_POLL, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %142

138:                                              ; preds = %134
  %139 = load i32, i32* @xgene_edac_pmd_check, align 4
  %140 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %8, align 8
  %141 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %140, i32 0, i32 3
  store i32 %139, i32* %141, align 4
  br label %142

142:                                              ; preds = %138, %134
  %143 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %8, align 8
  %144 = call i32 @xgene_edac_pmd_create_debugfs_nodes(%struct.edac_device_ctl_info* %143)
  %145 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %8, align 8
  %146 = call i32 @edac_device_add_device(%struct.edac_device_ctl_info* %145)
  store i32 %146, i32* %13, align 4
  %147 = load i32, i32* %13, align 4
  %148 = icmp sgt i32 %147, 0
  br i1 %148, label %149, label %156

149:                                              ; preds = %142
  %150 = load %struct.xgene_edac*, %struct.xgene_edac** %5, align 8
  %151 = getelementptr inbounds %struct.xgene_edac, %struct.xgene_edac* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = call i32 @dev_err(i32* %152, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  %154 = load i32, i32* @ENOMEM, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %13, align 4
  br label %183

156:                                              ; preds = %142
  %157 = load i64, i64* @edac_op_state, align 8
  %158 = load i64, i64* @EDAC_OPSTATE_INT, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %164

160:                                              ; preds = %156
  %161 = load i32, i32* @OP_RUNNING_INTERRUPT, align 4
  %162 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %8, align 8
  %163 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %162, i32 0, i32 2
  store i32 %161, i32* %163, align 8
  br label %164

164:                                              ; preds = %160, %156
  %165 = load %struct.xgene_edac_pmd_ctx*, %struct.xgene_edac_pmd_ctx** %9, align 8
  %166 = getelementptr inbounds %struct.xgene_edac_pmd_ctx, %struct.xgene_edac_pmd_ctx* %165, i32 0, i32 3
  %167 = load %struct.xgene_edac*, %struct.xgene_edac** %5, align 8
  %168 = getelementptr inbounds %struct.xgene_edac, %struct.xgene_edac* %167, i32 0, i32 1
  %169 = call i32 @list_add(i32* %166, i32* %168)
  %170 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %8, align 8
  %171 = call i32 @xgene_edac_pmd_hw_ctl(%struct.edac_device_ctl_info* %170, i32 1)
  %172 = load %struct.xgene_edac*, %struct.xgene_edac** %5, align 8
  %173 = getelementptr inbounds %struct.xgene_edac, %struct.xgene_edac* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = call i32 @devres_remove_group(i32* %174, i32 (%struct.xgene_edac*, %struct.device_node*, i32)* @xgene_edac_pmd_add)
  %176 = load %struct.xgene_edac*, %struct.xgene_edac** %5, align 8
  %177 = getelementptr inbounds %struct.xgene_edac, %struct.xgene_edac* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = load %struct.xgene_edac_pmd_ctx*, %struct.xgene_edac_pmd_ctx** %9, align 8
  %180 = getelementptr inbounds %struct.xgene_edac_pmd_ctx, %struct.xgene_edac_pmd_ctx* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @dev_info(i32* %178, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %181)
  store i32 0, i32* %4, align 4
  br label %192

183:                                              ; preds = %149, %125, %108
  %184 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %8, align 8
  %185 = call i32 @edac_device_free_ctl_info(%struct.edac_device_ctl_info* %184)
  br label %186

186:                                              ; preds = %183, %60, %48, %42, %28
  %187 = load %struct.xgene_edac*, %struct.xgene_edac** %5, align 8
  %188 = getelementptr inbounds %struct.xgene_edac, %struct.xgene_edac* %187, i32 0, i32 0
  %189 = load i32*, i32** %188, align 8
  %190 = call i32 @devres_release_group(i32* %189, i32 (%struct.xgene_edac*, %struct.device_node*, i32)* @xgene_edac_pmd_add)
  %191 = load i32, i32* %13, align 4
  store i32 %191, i32* %4, align 4
  br label %192

192:                                              ; preds = %186, %164, %21
  %193 = load i32, i32* %4, align 4
  ret i32 %193
}

declare dso_local i32 @devres_open_group(i32*, i32 (%struct.xgene_edac*, %struct.device_node*, i32)*, i32) #1

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @xgene_edac_pmd_available(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local %struct.edac_device_ctl_info* @edac_device_alloc_ctl_info(i32, i8*, i32, i8*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @edac_device_alloc_index(...) #1

declare dso_local i32 @of_address_to_resource(%struct.device_node*, i32, %struct.resource*) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @xgene_edac_pmd_create_debugfs_nodes(%struct.edac_device_ctl_info*) #1

declare dso_local i32 @edac_device_add_device(%struct.edac_device_ctl_info*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @xgene_edac_pmd_hw_ctl(%struct.edac_device_ctl_info*, i32) #1

declare dso_local i32 @devres_remove_group(i32*, i32 (%struct.xgene_edac*, %struct.device_node*, i32)*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @edac_device_free_ctl_info(%struct.edac_device_ctl_info*) #1

declare dso_local i32 @devres_release_group(i32*, i32 (%struct.xgene_edac*, %struct.device_node*, i32)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
